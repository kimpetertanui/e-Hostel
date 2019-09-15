<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);

 $id= $_POST['HostelID'];
 $S_name = $_POST['StudentName'];
 $S_Phone = $_POST['StudentPhone'];
 $S_Class = $_POST['StudentClass'];

$Sql_Query = "UPDATE StudentTable SET name= '$S_name', phone_number = '$S_Phone', class = '$S_Class' WHERE id = $id";

 if(mysqli_query($con,$Sql_Query))
{
 echo 'Record Updated Successfully';
}
else
{
 echo 'Something went wrong';
 }
 }
 mysqli_close($con);
?>
