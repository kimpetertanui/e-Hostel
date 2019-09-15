<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hostel";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);


// Check connection
if (!$conn) {
    //Return a success response to m-pesa
    $response = array(
        'ResultCode' => 1,
        'ResultDesc' => 'Fail'
    );
    echo json_encode($response);
    die("Connection failed: " . mysqli_connect_error());
}

$callbackJSONData=file_get_contents('php://input');
$callbackData=json_decode($callbackJSONData);
$resultCode=$callbackData->Body->stkCallback->ResultCode;
$resultDesc=$callbackData->Body->stkCallback->ResultDesc;
$merchantRequestID=$callbackData->Body->stkCallback->MerchantRequestID;
$checkoutRequestID=$callbackData->Body->stkCallback->CheckoutRequestID;
$amount=$callbackData->Body->stkCallback->CallbackMetadata->Item[0]->Value;
$mpesaReceiptNumber=$callbackData->Body->stkCallback->CallbackMetadata->Item[1]->Value;
$balance=$callbackData->Body->stkCallback->CallbackMetadata->Item[2]->Value;
$transactionDate=$callbackData->Body->stkCallback->CallbackMetadata->Item[3]->Value;
$phoneNumber=$callbackData->Body->stkCallback->CallbackMetadata->Item[4]->Value;


$sql="INSERT INTO mpesa (resultCode, merchantRequestID, mpesaReceiptNumber, amount) VALUES ('$resultCode', '$merchantRequestID', '$mpesaReceiptNumber', '$amount')";


$query = mysqli_query($conn,$sql);

// //Return a success response to m-pesa
// $response = array(
//     'ResultCode' => 0,
//     'ResultDesc' => 'Success'
// );
// echo json_encode($response);


mysqli_close($conn);



?>
