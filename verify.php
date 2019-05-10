<html>
<head>
  <head>
    <link href="styleverify.css" rel="stylesheet" />
  </head>
</head>

<?php



session_start();
if(!isset($_SESSION['mobileno']))

{

	$std=$_SESSION['std'];
	$name=$_SESSION['name'];
	$mob=$_SESSION['mob'];
  $board=$_SESSION['board'];
	//$sendotp=$SESSION['otp'];

	$pass=$_SESSION['pass'];
	$pass2=$_SESSION['pass2'];
	$email=$_SESSION['email'];

	?> <h1 class="login1">welcome</h1>
  <p class="test"> <?php
  if(isset($name)){
  echo "Name :- ".$name; }?> </p>

  <p class="std"> <?php
  if(isset($std)){
  echo "Class :- ".$std; }?> </p>

  <p class="board"> <?php
  if(isset($board)){
  echo "Board :- ".$board; }?> </p>
  <?php

	if(empty($name))
	{
		$error="something worng";
		echo "name";
	}
	 else if (empty($mob))
	{
		$error="something worng";
		echo "mob";
	}
	else if (!is_numeric($mob))
	{
		$error="something worng";
	}
	else if (mb_strlen($mob)!=10)
	{
		$error="something worng";
	}
	else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $error="something worng";
	  echo "email";
    }
	else if ($pass!=$pass2)
	{
		$error="something worng";
		echo "pass";

	}
	else if (mb_strlen($pass)<8)
	{
	$error="something worng";
	}
	else
	{


	if(isset($_POST['submit']))
{


	$userotp=$_POST['otp1'];
	// due to not sending sms we are using otp as mobile no
	$sendotp=$mob;
	if($sendotp == $userotp)
	{
		include("dbcon.php");

		$qyr="INSERT INTO `user`(`name`, `mobileno`, `email`, `board`, `password`, `class`) VALUES ('$name',$mob,'$email','$board','$pass',$std)";
			$run=mysqli_query($con,$qyr);
		if($run==true)
		{

			$_SESSION['mobileno']=$mob;
      $_SESSION['email']=$email;
      $_SESSION['std']=$std;

			header("location:selectquiz.php");

		}


	}
	else{
		echo "please enter a valid otp";


	}

}
}
?>

  <div class="login">
<form method="POST">
<p> Use Mobileno as your OTP</p>
<input  placeholder="enter otp " type="text" name="otp1" >
<input type="submit" name="submit">
</div>

<?php
}
else
{
	header("location:signupphp.php");

}



?>
</html>
