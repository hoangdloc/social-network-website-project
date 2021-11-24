<?php
  ob_start(); //Turns on output buffering
  session_start();

  $timezone = date_default_timezone_set("Asia/Ho_Chi_Minh");

  $con = mysqli_connect("localhost", "root", "", "social_network"); //Connection variable
  if (mysqli_connect_errno()) {
    echo "Failed to connect: " . mysqli_connect_errno();
  }

?>
