<?php
session_start();
if(isset($_SESSION['mobileno']))
{
  session_destroy();
  header("location:signin.php");
}

?>
