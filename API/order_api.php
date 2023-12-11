<?php
header("Content-Type: application/json");
$conn=mysqli_connect('localhost','root','','self_orderfood');
if(mysqli_connect_errno()){
    die('Connection Unsucessful');
}
$f_id=$_POST['f_id'];
$u_id=$_POST['id'];
$date=$_POST['date'];
$sql=mysqli_query($conn,"INSERT INTO food_order (food_id,id,order_date) VALUES ('$f_id','$u_id','$date')");
if($sql){
    $myarray['data']="sucess";
}else{
    $myarray['message']='error';
}
echo json_encode($myarray);