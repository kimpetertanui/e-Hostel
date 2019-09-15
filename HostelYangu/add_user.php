<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);

 $name = $_POST['name'];
 $phone_no= $_POST['phone_no'];
 $email= $_POST['email'];
 $id_no = $_POST['id_no'];
 $password= $_POST['password'];

$Sql_Query = "INSERT INTO users (name,phone_no,email,id_no,password) values ('$name','$phone_no','$email','$id_no','$password')";

 if(mysqli_query($con,$Sql_Query))
{
 echo 'User Registered Successfully';
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