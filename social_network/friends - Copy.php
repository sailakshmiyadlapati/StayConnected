<?php
 session_start();
 include("includes/connection.php");
 include("share.php");
if(! $_SESSION['user_email']){
echo "<script>alert('please LOGIN FIRST!')</script>";
}
 ?>
 <!DOCTYPE html>

<html>
	<head>
		<title>StayConnected</title>
		<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  		<link rel="stylesheet" href="styles/stylehome.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script type="text/javascript" src="js/jquery.js"></script>	
		<script src="//code.jquery.com/jquery-1.10.2.js"></script>
		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
		
	</head>

	<body background="tb.jpg">
	<div class = "nav" >
		<a href="home.php" id="navitem" class="home" >Home</a>
		<span id="navitem" class="messages" >Messages</span>
		<a href="friends.php" id="navitem" class="friends">Friends</a>
		<a href="stayconnected.php" id="navitem" class="logout">Logout</a>
		<img  id="logo" src="logo2.jpeg"> 	
			
	</div>
	<div id="sc">
	StayConnected
	</div>
	<div class= "yourprofile">
		<div>
		<?php
			$mail = $_SESSION['user_email'];
			$details = mysqli_query($con,"SELECT * FROM users WHERE user_email = '$mail'");
			while($row = mysqli_fetch_array($details)){
				$firstname = $row[1];
				$lastname = $row[2];
				$status = $row [11];
			    $user_image=$row[8];
				$posts=$row[12];
			
		?>
		<img id="myimage" src="<?php echo $user_image;?>">
		<button type="button" id="changeimage" class="btn btn-default" aria-label="Left Align" >
		<span class="glyphicon glyphicon-camera" aria-hidden="true"></span> Change image
		</div>
		<div id="dialog" title="Upload a photo">
		<form action="" method="POST" enctype="multipart/form-data">
		<input type="file" id="uploadphoto" name="imagebutton"/>
		<input type="submit"/>
		</div>
		<script>
		$("#dialog" ).hide();
		$('#changeimage').click(function(){
			$("#dialog" ).dialog();
			$("#dialog" ).show();		
		});
		</script>
			
		<div class="name"> 
			<div class="panel panel-primary">
			<?php echo $firstname;
			echo " ".$lastname;?>
			</div>
			<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Current Status:</h3>
					</div>
			<div class="panel-body">
			<?php echo $status;?>
			</div>
				
			</form>
			</div>
			
		</div>
		
		<?php	}
		?>
	</div>
	
	<div class="content">
			<div class="panel panel-default">
			   <div class="panel-heading">People You May Know</div>
			  	<?php
				
				$allusers = "select * from users";
				$getallusers = mysqli_query($con,$allusers);
				$numrows=mysqli_num_rows($getallusers);
				$num =1;
				while($num<=$numrows-1)
				{
					$mail = $_SESSION['user_email'];
					$getmakefriend= "select * from users where user_id='$num' and user_email!='$mail'";
					 $makefriend =mysqli_query($con,$getmakefriend);
					 while($row = mysqli_fetch_array($makefriend)){
						$firstname = $row[1];
						$lastname = $row[2];
						$user_image=$row[8];
						$makefriendmail = $row[4];
					?>
					
					<form action="" method="POST">
					<div id="makefriend">
					<img id="makefriendimage"src="<?php echo $user_image;?>">
			<?php   echo $firstname." ".$lastname;?>
			<?php	}
						 if(empty($_POST['addfriend'])){
						?><input class="btn btn-info addfriendbutton" name="addfriend"align="right" value="Add as Friend" type="submit" /> 
						</div>
						</form>
				 
					<?php } 
					 if (isset($_POST['addfriend'])){
						 global $con;
								$mail = $_SESSION['user_email'];
								$request = "insert into friends(sendreq_mail,receivereq_mail,friend_status) values('$mail','$makefriendmail','0')";
								$sendrequest = mysqli_query($con,"$request");
					 ?>
					 <span class="label label-default addfriendbutton" align="right">FriendRequest Sent</span>
					 
				<?php
					  
					 }	
					 
				$num=$num+1;
				
				}
				?>
					</div>
			</div>
	</div>
					
					
	<div class="yourfriends">
		<nav class="navbar navbar-default" id="navfriends">
		  <div class="container-fluid">
			<div class="navbar-header">
			Friends
			 </div>
		  </div>
		</nav>
		
		
	</div>
		
	</body>



</html>
