<?php
include("dbcon.php");



 if(isset($_GET['classid'])){
   $classid=$_GET['classid'];
 $qyr="SELECT * FROM selectsubject where classid=$classid";
 $run=mysqli_query($con,$qyr);
 echo "<select id='subjectid' onchange='change_subject()'>";
 echo "<option>select</option>";
 while($row=mysqli_fetch_array($run))
 {
   echo "<option value='$row[subjectid]'>";
   echo $row['subname'];
   echo "</option>";
 }
  echo "</select>";

}



 if(isset($_GET['subjectid'])){
   $subjectid=$_GET['subjectid'];
 $qyr="SELECT * FROM selectchapter where subjectid=$subjectid";
 $run=mysqli_query($con,$qyr);
 echo "<select id='chapterid' onchange='change_chapter()'>";
 echo "<option>select</option>";
 while($row=mysqli_fetch_array($run))
 {
   echo "<option value='$row[chapterid]'>";
   echo $row['chaptername'];
   echo "</option>";
 }
  echo "</select>";

}


if(isset($_GET['chapterid'])){
  $chapterid=$_GET['chapterid'];
$qyr="SELECT * FROM selectquiz where chapterid=$chapterid";
$run=mysqli_query($con,$qyr);
echo "<select id='quiz'  onchange='path(this.value)' >";
echo "<option>select</option>";
while($row=mysqli_fetch_array($run))
{
  echo "<option value='quiz.php?name=$row[quizid]'>";
  echo $row['quizname'];
  echo "</option>";
}
 echo "</select>";

}
?>
