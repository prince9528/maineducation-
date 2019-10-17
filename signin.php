<?php
session_start();
if(!isset($_SESSION['mobileno']))
{?>
<html>
<head>
  <link href="stylesignin.css" rel="stylesheet" />
</head>

<div class="login">
    <h1>Login</h1>
    <form method="post">
        <input type="text" name="mobileno" placeholder="Mobile No." required="required" />
        <input type="password" name="password" placeholder="Password" required="required" />
        <button type="submit"  name="submit" value="submit" class="btn btn-primary btn-block btn-large">Sign In.</button>
        <a class="sign" href="signup.php" >Sign up</a>
        <a  class="forget" style="text-decoration: none;" href="forgetpassword.php">Forget Password</a>
    </form>
</div>


</html>
<?php
include("dbcon.php");

if(isset($_POST["submit"]))
{
$mobileno=$_POST['mobileno'];
$password=$_POST['password'];
echo $mobileno;
echo $password;
$qyr="SELECT * FROM `user` WHERE mobileno=$mobileno AND password='$password'";
$run=mysqli_query($con,$qyr);
$row=mysqli_num_rows($run);
if($row > 0)
{ session_start();
  $_SESSION['mobileno']=$mobileno;
  header("location:selectquiz.php");
}
else {
  header("location:signin.php");
}
}
}
else {
  header("location:selectquiz.php");
}
?>
