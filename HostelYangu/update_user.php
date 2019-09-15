<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);

 $id= $_POST['UserID'];
 $name = $_POST['name'];
 $phone_no = $_POST['phone_no'];
 $email= $_POST['email'];
 $id_no= $_POST['id_no'];

$Sql_Query = "UPDATE users SET name= '$name', phone_no = '$phone_no',email='$email', id_no = '$id_no' WHERE id = $id";

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
