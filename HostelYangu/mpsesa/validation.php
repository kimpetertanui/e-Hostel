<?php
if($_SERVER['REQUEST_METHOD']=='POST'){

include 'DatabaseConfig.php';

 $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
header("Content-Type:application/json"); 
if (!isset($_GET["token"]))
{
echo "Technical error";
exit();
}
if ($_GET["token"]!='kimelipeter20@gmail.com')
{
echo "Invalid authorization";
exit();
}
/* 
Consumer Key	LwTvTCjO2TfCe2Z5TA8p1XdLZX61rGJF
Consumer Secret	0hHQB3WJj2BYQQR8
Password kimelipeter20@gmail.com
600286
here you need to parse the json format 
and do your business logic e.g. 
you can use the Bill Reference number 
or mobile phone of a customer 
to search for a matching record on your database. 
*/ 
/* 
Reject an Mpesa transaction 
by replying with the below code 
*/ 
echo '{"ResultCode":1, "ResultDesc":"Failed", "ThirdPartyTransID": 0}'; 
/* 
Accept an Mpesa transaction 
by replying with the below code 
*/ 
echo '{"ResultCode":0, "ResultDesc":"Success", "ThirdPartyTransID": 0}';
}
 
?>