<?php

	$url = parse_url(getenv("CLEARDB_DATABASE_URL"));

	$server = $url["host"];
	$user   = $url["user"];
	$pass   = $url["pass"];
	$db     = substr($url["path"], 1);

	/*$con = new mysqli($server, $user, $pass, $db);*/

	$con=mysqli_connect("$server", "$user", "$pass", "$db") or die("Connection was not established");



?>