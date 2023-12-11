<?php
header("Content-Type: application/json");
$conn=mysqli_connect('localhost','root','','self_orderfood');
if(mysqli_connect_errno()){
    die('Connection Unsucessful');
}
$o_id=$_POST['order_id'];
$sql=mysqli_query($conn,"DELETE FROM food_order WHERE order_id='$o_id'");
if($sql){
    $myarray['data']="removed";
}else{
    $myarray['data']="error";
}
echo json_encode($myarray);
?>