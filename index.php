<!DOCTYPE html>

<?php
session_start();
include("includes/connection.php");

?>

<html>
<head>
<title>StayConnected </title>

<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="styles/style.css">
<script src="js/imageslide.js"></script>
</head>

<body background="tb.jpg">
<div class = "nav" >
	<div class = "nav" >
	<img id="logo"src="logo2.jpeg">
	<div class="navitem">
	<marquee>Stay in touch with the people in your life through StayConnected</marquee> 
		</div>
		<div id="sc">
		StayConnected
        </div>		
</div>
	
	
</div>
<body onload="slideA()">
<img src="images/img1.jpg" id="img"/>
<div class="inputform">
	<div id="loginsaying">Login now to stay connected! </div>
	<form action="" method="post">
	<input class="login" type="email" name="mail" placeholder="Your Email" required="required" maxlength="30" size="38" />
	<input class="login" type="password" name="password" placeholder="Your Password" required="required" maxlength="20" size="38" />
	<input class="btn btn-info" id="loginbutton" value="  Login!  " type="submit" name="login" />  
	</form>
	<?php
	include("login.php");
	?>
	</br>
	<div id="signupsaying">Signup now to connect! </div>
	<form action="" method="post">
	<input class="signup" type="text" name="firstname" placeholder="First Name" required="required" maxlength="20" size="22" />
	<input class="signup" type="text" name="lastname" placeholder="Last Name" required="required" maxlength="20" size="22" />
	<input class="signup" type="email" name="mail" placeholder="Your Email" required="required" maxlength="30" size="38" />
	<input class="signup" type="password" name="password" placeholder="Set your password" maxlength="20" size="38" />
	<span id="birthday">Select your birthday:</span><input class="signup" type="date" name="birthday" placeholder="Your Birthday" required="required" maxlength="13" size="52" />
	<select class="signup" name="gender" required="required">
		<option>Select your gender</option>
		<option>Male</option>
		<option>Female</option>
	</select>
	</br>	
	<input class="btn btn-info" id="signupbutton" value="Sign Up!" type="submit" name="sign_up" />  
	</form>
	<?php
		include("user_insert.php");
	?>
	</div>

</div>




</body>












</html>









