<?php
header("Content-Type: application/json");
$conn=mysqli_connect('localhost','root','','self_orderfood');
if(mysqli_connect_errno()){
    die('Connection Unsucessful');
}

$sql=mysqli_query($conn,"SELECT * FROM food_details WHERE category='drinks'");
$myarray=array();
while($data=mysqli_fetch_assoc($sql)){
    $myarray['data'][]=$data;
}
if(empty($myarray['data'])){
    $myarray['message']='No record found';
}
echo json_encode($myarray);
?>