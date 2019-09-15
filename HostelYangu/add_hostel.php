<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
 $id= $_POST['id'];
 $name = $_POST['name'];
 $capacity= $_POST['capacity'];
 $location = $_POST['location'];

$Sql_Query = "INSERT INTO hostel (id,name,capacity,location) values ('$id','$name','$capacity','$location')";

 if(mysqli_query($con,$Sql_Query))
{
 echo 'Hostel Registered Successfully';
 header('Location: http://127.0.0.1/HostelYangu/index.html');
exit;
}
else
{
 echo 'Something went wrong';
 }
 }
 mysqli_close($con);
?>