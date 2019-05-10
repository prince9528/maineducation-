<?php

if(isset($_POST['verifyotp']))
{	$name=$_POST['name'];
	$mob=$_POST['mobileno'];
	$email=$_POST['email'];
	$pass=$_POST['psw1'];
	$pass2=$_POST['psw2'];
	$verifyotp=1;

}

if(isset($_POST['sendotp']))
{	$name=$_POST['name'];
	$mob=$_POST['mobileno'];
	$email=$_POST['email'];
	$pass=$_POST['psw1'];
	$pass2=$_POST['psw2'];
	 if (empty($mob))
	{
		$errorm="enter mobile no ";
	}
	else if (!is_numeric($mob))
	{
		$errorm="enter a digital num";
	}
	else if (mb_strlen($mob)!=10)
	{
		$errorm="enter a valid no ";
	}
	else
	{$send=1;}

}
if(isset($_POST['submit']))
{
	$name=$_POST['name'];
	$mob=$_POST['mobileno'];
	$email=$_POST['email'];
	$pass=$_POST['psw1'];
	$pass2=$_POST['psw2'];
	$board=$_POST['Stateboard'];
	$std=$_POST['class'];


	if(empty($name))
	{
		$error="enter your name";
	}
	 else if (empty($mob))
	{
		$errorm="enter mobile no ";
	}
	else if (!is_numeric($mob))
	{
		$errorm="enter a digital num";
	}
	else if (mb_strlen($mob)!=10)
	{
		$errorm="enter a valid no ";
	}
	else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $errore = "Invalid email format";
    }
	else if ($pass!=$pass2)
	{
		$errorp="password should be match";

	}
	else if (mb_strlen($pass)<8)
	{
		$errorp="password must be greater than 8 char";
	}
	else
	{	session_start();
		$_SESSION['id']=1;
		$_SESSION['name']=$name;
		$_SESSION['mob']=$mob;
		$_SESSION['pass']=$pass;
		$_SESSION['pass2']=$pass2;
		$_SESSION['email']=$email;
		$_SESSION['std']=$std;
		$_SESSION['board']=$board;
		// Authorisation details.
	$username = "abhishek2018agrawal@gmail.com";
	$hash = "9dfc345bc7982b2890aa355b0afad840dccd0e0171e388c3fcadc4ce18a3e809";

	// Config variables. Consult http://api.textlocal.in/docs for more info.
	$test = "0";
	$otp=mt_rand(10000,30000);
	// Data for text message. This is the text message data.
	$sender = "TXTLCL"; // This is who the message appears to be from.
	$numbers = $mob; // A single number or a comma-seperated list of numbers
	$message = "$otp is your one time password , do not share this to some one else ";
	// 612 chars or less
	// A single number or a comma-seperated list of numbers
	$message = urlencode($message);
	$data = "username=".$username."&hash=".$hash."&message=".$message."&sender=".$sender."&numbers=".$numbers."&test=".$test;
	$ch = curl_init('http://api.textlocal.in/send/?');
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$result = curl_exec($ch); // This is the result from the API
	curl_close($ch);
	setcookie('otp',$otp);
		header("location:verify.php");
		$_SESSION['otp']=$otp;
	}


}



session_start();

if(!isset($_SESSION['mobileno']))
{?>
<html>
<head>
  <link href="stylesignup.css" rel="stylesheet" />
</head>

<div class="login">
    <h1>Sign up</h1>
    <form method="post">
      <p style="color:red" > <?php
      if(isset($error)){
    	echo "$error"; }?> </p>
        <input type="text" placeholder="Enter Name" name="name"  value="<?php if(isset($_POST["submit"]) || isset($_POST["sendotp"]) || isset($_POST['verifyotp'])){ echo "$name"; }?>" >


      <p style="color:red" > <?php
    	if(isset($errorm)){
    	echo "$errorm"; }?> </p>
       <input type="text"  name="mobileno"  placeholder="enter mobile no" value="<?php if(isset($_POST["submit"]) || isset($_POST["sendotp"]) || isset($_POST['verifyotp']) ){ echo "$mob"; }?>" >



      <p style="color:red" > <?php
      	if(isset($errore)){
      	echo "$errore"; }?>
       </p>
          <input type="text" placeholder="Enter Email" name="email" value="<?php if(isset($_POST["submit"]) || isset($_POST["sendotp"]) || isset($_POST['verifyotp']) ){ echo "$email"; }?>">


        <label><p style="color:red;" > <?php
    	if(isset($errorp)){
        echo "";
    	echo "$errorp"; }?> </p></label>

        <input type="password" name="psw1" placeholder="password"  />
        <input type="password" name="psw2" placeholder="confirm password"  />


        <label><b>Class</b></label><br>
        <select name="class"><br>
            <option value="10">10th</option>
            <option value="12">12th</option>
        </select><br>


        <label><b>StateBoard*</b></label><br>
        <select name="Stateboard">
            <option value="Bihar Board">Bihar Board</option>
            <option value="CBSE">CBSE</option>
            <option value="ICSE">ICSE</option>
            <option value="U.P.Board">U.P.Board</option>
            <option value="Maharashtra Board">Maharashtra Board</option>
            <option value="Haryana Board">Haryana Board</option>
            <option value="Rajasthan Board">Rajasthan Board</option>
            <option value="National Institute">National Institute</option>
        </select><br>


        <button type="submit"  name="submit" value="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
        <a class="sign" href="signin.php" >signin</a>
        <a  class="forget" href="forgetpassword.php">forget password</a>
    </form>
</div>
</html>









<?php

}

else {
  header("location:selectquizs.php");
}
?>
