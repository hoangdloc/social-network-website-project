<?php
  class User {
    private $user;
    private $con;

    public function __construct($con, $user) {
      $this -> con = $con;
      $user_details_query = mysqli_query($con, "SELECT * FROM tblUser WHERE username = '$user'");
      $this -> user = mysqli_fetch_array($user_details_query);
    }

    public function getUsername() {
      return $this -> user['username'];
    }

    public function getNumPost() {
      $username = $this -> user['username'];
      $query = mysqli_query($this -> con, "SELECT num_posts FROM tblUser WHERE username = '$username'");
      $row = mysqli_fetch_array($query);
      return $row['num_posts'];
    }

    public function getFirstAndlastName() {
      $username = $this -> user['username'];
      $query = mysqli_query($this -> con, "SELECT first_name, last_name FROM tblUser WHERE username = '$username'");
      $row = mysqli_fetch_array($query);
      return $row['first_name'] . " " . $row['last_name'];
    }

    public function isClosed() {
      $username = $this -> user['username'];
      $query = mysqli_query($this -> con, "SELECT user_closed FROM tblUser WHERE username = '$username'");
      $row = mysqli_fetch_array($query);

      if ($row['user_closed'] == 'yes')
        return true;
      else
        return false;
    }
  }
?>
