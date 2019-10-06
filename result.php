<html>
<head>
	<link href="styleresult.css" rel="stylesheet" />
</head>
<body>
<?php


session_start();
if(isset($_SESSION['mobileno']))
{
include("dbcon.php");


include("dbcon.php");

$name=$_GET['name'];
$question=$name."q";
$answer=$name."a";

if(!empty($_POST['quizcheck']))
{
	 $count=count($_POST['quizcheck']);
?>
<h1 class="login">Result</h1>
<p> for each wrong answer you have get_class -1 marks and for each correct answer you have get 4 marks</p>
<p class="scorep" ><?php echo "total no of question attemp by you is = ".$count;?></p>
<?php

$given_ans=$_POST['quizcheck'];

$con=mysqli_connect("localhost","root","","quizdatabase");
$result=0;


/*while($row=mysqli_fetch_array($run))
{*/

	foreach($given_ans as $que_no => $ans_id)
	{

		$query="select * from $question where que_id=$que_no";
		$run = mysqli_query($con , $query);
		$row=mysqli_fetch_assoc($run);

		if($ans_id==$row['ans_id'])
		{
			$result=$result+4;
		}
		else
		{
			$result=$result-1;
		}


	}

/*}*/
?>

<p class="resultp"><?php echo "your total marks in this test is   = ".$result; ?> </p>
<?php
}





?>

<a class="logout" href="logout.php"> logout </a>

<?php }
else {
	header("location:signin.php");
} ?>
</body>
</html>
