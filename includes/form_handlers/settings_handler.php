<?php
if (isset($_POST['update_details'])) {
  $first_name = $_POST['first_name'];
  $last_name = $_POST['last_name'];
  $email = $_POST['email'];

  $email_check = mysqli_query($con, "SELECT * FROM tblUser WHERE email = '$email'");
  $row = mysqli_fetch_array($email_check);
  $matched_user = $row['username'];

  if ($matched_user == "" || $matched_user == $userLoggedIn) {
    $message = "Details updated ✍ <br><br>";

    $query = mysqli_query($con, "UPDATE tblUser SET first_name = '$first_name', last_name = '$last_name', email = '$email' WHERE username = '$userLoggedIn'");
  }
  else
    $message = "That email address is already in use 🌚 <br><br>";
}
else
  $message = "";

//*******************************************************************

if (isset($_POST['update_password'])) {
  $old_password = strip_tags($_POST['old_password']);
  $new_password = strip_tags($_POST['new_password']);
  $new_password_confirm = strip_tags($_POST['new_password_confirm']);

  $password_query = mysqli_query($con, "SELECT password FROM tblUser WHERE username = '$userLoggedIn'");
  $row = mysqli_fetch_array($password_query);
  $db_password = $row['password'];

  if (md5($old_password) == $db_password) {
    if ($new_password == $new_password_confirm) {

      if (strlen($new_password) <= 4) {
        $password_message = "Sorry, your password must be greater than 4 characters long ❗❗❗<br><br>";
      }
      else {
        $new_password_md5 = md5($new_password);
        $password_query = mysqli_query($con, "UPDATE tblUser SET password = '$new_password_md5' WHERE username = '$userLoggedIn'");
        $password_message = "Your password has been changed ✅<br><br>";
      }

    }
    else {
      $password_message = "The two new passwords need to match ❌❌❌<br><br>";
    }
  }
  else {
    $password_message = "The old password is incorrect ❌❌❌<br><br>";
  }
}
else {
  $password_message = "";
}

if (isset($_POST['close_account'])) {
  header("Location: close_account.php");
}
?>
