<?php
header("Content-Type: application/json");
$conn=mysqli_connect('localhost','root','','self_orderfood');
if(mysqli_connect_errno()){
    die('Connection Unsucessful');
}
$id=$_POST['id'];
$sql=mysqli_query($conn,"SELECT * FROM food_details WHERE food_id='$id'");
$row=mysqli_fetch_assoc($sql);
if($sql){
    $myarray['data']=$row;
}else{
    $myarray['message']='error';
}
echo json_encode($myarray);