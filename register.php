<?php
  session_start();
  $con = mysqli_connect("localhost", "root", "", "social_network");
  if (mysqli_connect_errno())
    echo "Failed to connect: " . mysqli_connect_errno();
  
  //Declaring variables to prevent errors
  $fname = ""; //First name
  $lname = ""; //Last name
  $email = ""; //Email;
  $cfemail = ""; //Confirm email
  $password = ""; //Password
  $cfpassword = ""; //Confirm password
  $date = ""; //Sign up date
  $error_array = array(); //Holds error messages

  if (isset($_POST['register_button'])) {

    //Registration form values

    //First name
    $fname = strip_tags($_POST['reg_fname']); //Remove html tags
    $fname = str_replace(' ', '', $fname); //Remove spaces
    $fname = ucfirst(strtolower($fname)); // Uppercase first letter
    $_SESSION['reg_fname'] = $fname; // Store first name into session variables

    //Last name
    $lname = strip_tags($_POST['reg_lname']); //Remove html tags
    $lname = str_replace(' ', '', $lname); //Remove spaces
    $lname = ucfirst(strtolower($lname)); // Uppercase first letter
    $_SESSION['reg_lname'] = $lname; // Store last name into session variables

    //Email
    $email = strip_tags($_POST['reg_email']); //Remove html tags
    $email = str_replace(' ', '', $email); //Remove spaces
    $_SESSION['reg_email'] = $email; // Store email into session variables

    //Confirm email
    $cfemail = strip_tags($_POST['reg_cfemail']); //Remove html tags
    $cfemail = str_replace(' ', '', $cfemail); //Remove spaces
    $_SESSION['reg_cfemail'] = $cfemail; // Store confirm email into session variables

    //Password
    $password = strip_tags($_POST['reg_password']); //Remove html tags
    $cfpassword = strip_tags($_POST['reg_cfpassword']); //Remove html tags

    $date = date("Y-m-d"); //Current date

    if ($email == $cfemail) {
      //Check of email is in valid format
      if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $email = filter_var($email, FILTER_VALIDATE_EMAIL);

        //Check if email already exists
        $email_check = mysqli_query($con, "SELECT email FROM tblUser WHERE email = '$email'");

        //Count the number of rows returned
        $num_rows = mysqli_num_rows($email_check);

        if ($num_rows > 0)
          array_push($error_array, "Email already in use<br>");

      }
      else {
        array_push($error_array, "Invalid email format!<br>");
      }
    }
    else {
      array_push($error_array, "Emails don't match!<br>");
    }

    if (strlen($fname) > 25 || strlen($fname) < 2) {
      array_push($error_array, "Your first name must be between 2 and 25 characters!<br>");
    }

    if (strlen($lname) > 25 || strlen($lname) < 2) {
      array_push($error_array, "Your last name must be between 2 and 25 characters!<br>");
    }

    if ($password != $cfpassword) {
      array_push($error_array, "Your passwords do not match!<br>");
    }
    else {
      if (preg_match('/[^A-Za-z0-9]/', $password)) {
        array_push($error_array, "Your password can only contain characters or numbers!<br>");
      }
    }

    if (strlen($password) > 30 || strlen($password) < 5) {
      array_push($error_array, "Your password must be between 5 and 30 characters!<br>");
    }

    if (empty($error_array)) {
      $password = md5($password); //Encrypt password before sending to database

      //Generate username by concatenating first name and last name
      $username = strtolower($fname . "_" . $lname);
      $check_username_query = mysqli_query($con, "SELECT username FROM tblUser WHERE username = '$username'");

      $i = 0;
      //if username exists add number to username
      while(mysqli_num_rows($check_username_query) != 0) {
        $i++; //Add 1 to i
        $username = $username . "_" . $i;
        $check_username_query = mysqli_query($con, "SELECT username FROM tblUser WHERE username = '$username'");
      }

      //Profile picture assignment
      $rand = rand(1, 16); //Random number between 1 and 16

      if ($rand == 1)
        $profile_pic = "assets/images/profile_pics/defaults/head_alizarin.png";
      else if ($rand == 2)
        $profile_pic = "assets/images/profile_pics/defaults/head_amethyst.png";
      else if ($rand == 3)
        $profile_pic = "assets/images/profile_pics/defaults/head_belize_hole.png";
      else if ($rand == 4)
        $profile_pic = "assets/images/profile_pics/defaults/head_carrot.png";
      else if ($rand == 5)
        $profile_pic = "assets/images/profile_pics/defaults/head_deep_blue.png";
      else if ($rand == 6)
        $profile_pic = "assets/images/profile_pics/defaults/head_emerald.png";
      else if ($rand == 7)
        $profile_pic = "assets/images/profile_pics/defaults/head_green_sea.png";
      else if ($rand == 8)
        $profile_pic = "assets/images/profile_pics/defaults/head_nephritis.png";
      else if ($rand == 9)
        $profile_pic = "assets/images/profile_pics/defaults/head_pete_river.png";
      else if ($rand == 10)
        $profile_pic = "assets/images/profile_pics/defaults/head_pomegranate.png";
      else if ($rand == 11)
        $profile_pic = "assets/images/profile_pics/defaults/head_pumpkin.png";
      else if ($rand == 12)
        $profile_pic = "assets/images/profile_pics/defaults/head_red.png";
      else if ($rand == 13)
        $profile_pic = "assets/images/profile_pics/defaults/head_sun_flower.png";
      else if ($rand == 14)
        $profile_pic = "assets/images/profile_pics/defaults/head_turqoise.png";
      else if ($rand == 15)
        $profile_pic = "assets/images/profile_pics/defaults/head_wet_asphalt.png";
      else if ($rand == 16)
        $profile_pic = "assets/images/profile_pics/defaults/head_wisteria.png";
      
      $query = mysqli_query($con, "INSERT INTO tblUser VALUES ('', '$fname', '$lname', '$username', '$email', '$password', '$date', '$profile_pic', '0', '0', 'no', ',')");

      array_push($error_array, "<span style='color: #14c800;'>You're all set! Go ahead and login!</span><br>");

      //Clear session variables
      $_SESSION['reg_fname'] = "";
      $_SESSION['reg_lname'] = "";
      $_SESSION['reg_email'] = "";
      $_SESSION['reg_cfemail'] = "";
      $_SESSION['reg_password'] = "";
      $_SESSION['reg_cfpassword'] = "";
    }

  }

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome to Nhanchinher</title>
</head>
<body>
  
  <form action="register.php" method="POST">
    <input type="text" name="reg_fname" placeholder="First Name" value="<?php if(isset($_SESSION['reg_fname'])) {
      echo $_SESSION['reg_fname'];
    } ?>" required>
    <br>
    <?php if (in_array("Your first name must be between 2 and 25 characters!<br>", $error_array))
      echo "Your first name must be between 2 and 25 characters!<br>"; ?>
    
    <input type="text" name="reg_lname" placeholder="Last Name" value="<?php if(isset($_SESSION['reg_lname'])) {
      echo $_SESSION['reg_lname'];
    } ?>" required>
    <br>
    <?php if (in_array("Your last name must be between 2 and 25 characters!<br>", $error_array))
      echo "Your first last must be between 2 and 25 characters!<br>"; ?>

    <input type="email" name="reg_email" placeholder="Email" value="<?php if(isset($_SESSION['reg_email'])) {
      echo $_SESSION['reg_email'];
    } ?>" required>
    <br>

    <input type="email" name="reg_cfemail" placeholder="Confirm Email" value="<?php if(isset($_SESSION['reg_cfemail'])) {
      echo $_SESSION['reg_cfemail'];
    } ?>" required>
    <br>
    <?php if (in_array("Email already in use<br>", $error_array))
      echo "Email already in use<br>";
    else if (in_array("Invalid email format!<br>", $error_array))
      echo "Invalid email format!<br>";
    else if (in_array("Emails don't match!<br>", $error_array))
      echo "Emails don't match!<br>"; ?>


    <input type="password" name="reg_password" placeholder="Password" required>
    <br>

    <input type="password" name="reg_cfpassword" placeholder="Confirm Password" required>
    <br>
    <?php if (in_array("Your passwords do not match!<br>", $error_array))
      echo "Your passwords do not match!<br>";
    else if (in_array("Your password can only contain characters or numbers!<br>", $error_array))
      echo "Your password can only contain characters or numbers!<br>";
    else if (in_array("Your password must be between 5 and 30 characters!<br>", $error_array))
      echo "Your password must be between 5 and 30 characters!<br>"; ?>

    <input type="submit" name="register_button" value="Register">
    <br>

    <?php if (in_array("<span style='color: #14c800;'>You're all set! Go ahead and login!</span><br>", $error_array))
      echo "<span style='color: #14c800;'>You're all set! Go ahead and login!</span><br>"; ?>
  </form>

</body>
</html>