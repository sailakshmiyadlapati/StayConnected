<?php

$url = parse_url(getenv("mysql://b8af9b811a27ad:ed86e1b4@us-cdbr-iron-east-04.cleardb.net/heroku_2f65223a14ae42a?reconnect=true"));

	$server = $url["us-cdbr-iron-east-04.cleardb.net"];
	$username = $url["b8af9b811a27ad"];
	$password = $url["ed86e1b4"];
	$db = substr($url["heroku_2f65223a14ae42a"], 1);

	/*$conn = new mysqli($server, $username, $password, $db);*/

	$con=mysqli_connect("$server", "$username", "$password", "$db") or die("Connection was not established");



?>