<?php
header("Content-Type: application/json");
$conn=mysqli_connect("localhost","root","","self_orderfood");
if(mysqli_connect_errno()){
    die("Connection Unsucessful");
}
$email=$_POST['email'];
$password=$_POST['password'];
$sql=mysqli_query($conn,"SELECT id FROM user_registration WHERE Email='$email' AND Password='$password'");
$row=mysqli_fetch_assoc($sql);
if($sql){
    $myarray['data']=$row;
}else{
    $myarray['message']='error';
}
echo json_encode($myarray);