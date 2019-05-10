<?php
session_start();
if(isset($_SESSION['mobileno']))
{
include("dbcon.php");



 ?>
<html>
<head>
<link rel="stylesheet" href="styleselectquiz.css">
</head>
<body>
<form name='form1' method="post">
  <h1 class="login1">Select Quiz</h1>
<table class="login" >
  <tr class="table1">
    <td> select class</td>
    <td><select id="classid" onchange="changeclass()">
      <option>select</option>
      <?php
      $qyr="SELECT * FROM `selectclass`";
      $run=mysqli_query($con,$qyr);

      while($row=mysqli_fetch_array($run))
      {
        ?>
        <option value="<?php echo $row['classid'] ?>" ><?php echo $row['classname']; ?></option>
        <?php
      }
      ?>

    </select>
  </td>
  </tr>


<tr class="table1">
  <td>select subject
  </td>
  <td>
    <div id="subject">
    <select>
      <option>select</option>
    </select>
  </div>
  </td>
</tr>

<tr class="table1">
  <td>select chapter
  </td>
  <td>
    <div id="chapter">
    <select>
      <option>select</option>
    </select>
  </div>
  </td>
</tr>


<tr class="table1">
  <td>select quiz
  </td>
  <td>
    <div id="quiz">
    <select>
      <option>select</option>
    </select>
  </div>
  </td>
</tr>


</table>
<a href="logout.php" class="logout"> logout</a>

</form>
<script type="text/JavaScript">
function changeclass()
{
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.open("GET","ajax.php?classid="+document.getElementById("classid").value,false);
  xmlhttp.send(null);

  document.getElementById("subject").innerHTML=xmlhttp.responseText;
}


function change_subject()
{
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.open("GET","ajax.php?subjectid="+document.getElementById("subjectid").value,false);
  xmlhttp.send(null);

  document.getElementById("chapter").innerHTML=xmlhttp.responseText;
}


function change_chapter()
{
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.open("GET","ajax.php?chapterid="+document.getElementById("chapterid").value,false);
  xmlhttp.send(null);

  document.getElementById("quiz").innerHTML=xmlhttp.responseText;
}

function path(src)
{
  window.location= src;
}



</script>
</body>
</html>
<?php
 }
 else {

   header("location:signin.php");

 }

 ?>
