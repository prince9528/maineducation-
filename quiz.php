<html>
<head>
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
?>

<form method="post" action="result.php?name=<?php echo $_GET['name']; ?> ">
<?php


$con=mysqli_connect("localhost","root","","quizdatabase");
$i=1;
for($i = 1; $i <= 5; $i+=1)
{

$que_sel="select * from $question where que_id = $i";
$que_run=mysqli_query($con , $que_sel);
while($que = mysqli_fetch_assoc($que_run))
{

	?>

	<tr>
	<td>
	<p> <?php echo $que['que_id'] ,": ", $que['question']; ?>	</p>
	</td>

	<?php
	$que_ans="select * from $answer where ans_id = $i";
	$ans_run=mysqli_query($con , $que_ans);
	while($ans=mysqli_fetch_array($ans_run))
	{?>

	 <input type="radio" name="quizcheck[<?php echo $ans['ans_id']; ?>]" value="<?php echo $ans['aid']; ?>" >
	<?php echo $ans['answer']; } ?>
	</tr>

<?php





}
}
?>
<input type="submit" name="check" value="getresult">
<a href="logout.php" > logout</a>
</form>
<?php
}
else {
	header("location:signin.php");
}
?>
</body>
</html>
