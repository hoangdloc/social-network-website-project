<?php  
require 'config/config.php';
include("includes/classes/User.php");
include("includes/classes/Post.php");


if (isset($_SESSION['username'])) {
	$userLoggedIn = $_SESSION['username'];
	$user_details_query = mysqli_query($con, "SELECT * FROM tblUser WHERE username='$userLoggedIn'");
	$user = mysqli_fetch_array($user_details_query);
}
else {
	header("Location: register.php");
}

?>

<html>
<head>
	<title>Socialhub</title>

	<!-- Javascript -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/bootbox.min.js"></script>
	<script src="assets/js/socialhub.js"></script>
	<script src="assets/js/jquery.Jcrop.js"></script>
	<script src="assets/js/jcrop_bits.js"></script>




	<!-- CSS -->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link href="assets/css/all.css" rel="stylesheet"> <!--load all styles -->
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" href="assets/css/jquery.Jcrop.css" type="text/css" />
	
</head>
<body>

	<div class="top_bar"> 

		<div class="logo">
			<a href="index.php">Socialhub</a>
		</div>

		<nav>
			<a href="<?php echo $userLoggedIn; ?>">
				<?php echo $user['first_name']; ?>
			</a>
			<a href="index.php">
        <i class="fas fa-home fa-lg"></i>
      </a>
      <a href="#">
        <i class="fas fa-envelope fa-lg"></i>
      </a>
      <a href="#">
        <i class="fas fa-bell fa-lg"></i>
      </a>
      <a href="requests.php">
        <i class="fas fa-users fa-lg"></i>
      </a>
      <a href="#">
        <i class="fas fa-cog fa-lg"></i>
      </a>
      <a href="includes/handlers/logout.php">
        <i class="fas fa-sign-out-alt fa-lg"></i>
      </a>

		</nav>

	</div>


	<div class="wrapper">
    