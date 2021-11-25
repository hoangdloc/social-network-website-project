<?php
  include("includes/header.php");

  if (isset($_GET['profile_username'])) {
    $username = $_GET['profile_username'];
    $user_details_query = mysqli_query($con , "SELECT * FROM tblUser WHERE username = '$username'");
    $user_array = mysqli_fetch_array($user_details_query);

    $num_friends = (substr_count($user_array['friend_array'], ",")) - 1;
  }

?>

    <style type="text/css">
      .wrapper {
        margin-left: 0px;
        padding-left: 0px;
      }
    </style>

    <div class="profile_left">
      <img src="<?php echo $user_array['profile_pic']; ?>">
      <div class="profile_info">
        <p><?php echo "Posts: " . $user_array['num_posts']; ?></p>
        <p><?php echo "Likes: " . $user_array['num_likes']; ?></p>
        <p><?php echo "Friends: " . $num_friends; ?></p>
      </div>
    </div>

    <div class="main_column column">
      <?php echo $username; ?>
    </div>

</div>
</body>
</html>
