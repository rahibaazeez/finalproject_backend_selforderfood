<?php
header("Content-Type: application/json");
$conn=mysqli_connect("localhost","root","","self_orderfood");
if(mysqli_connect_errno()){
    die("Connection Unsucessful");
}
$name=$_POST['Name'];
$email=$_POST['Email'];
$phone=$_POST['Phonenumber'];
$password=$_POST['Password'];
$filename=$_FILES["Photo"]["name"];
$tempname=$_FILES["Photo"]["tmp_name"];
$folder="./image/".$filename;
$image=$filename;
$uploadOk=1;
$imageFileType=strtolower(pathinfo($folder,PATHINFO_EXTENSION));
if($imageFileType!="jpg"&& $imageFileType!="png"&& $imageFileType!="jpg"&&$imageFileType!="gif"){
    echo "Sorry image of file type jpg,jepg,pdf and gif are allowed";
    $uploadOk=0;
}
if($uploadOk==0){
    echo "sorry";
}else{
    move_uploaded_file($tempname,$folder);
}
$sql=mysqli_query($conn,"INSERT INTO user_registration(Photo,Name,Email,Phonenumber,Password) VALUES('$image','$name','$email','$phone','$password')");
$data=mysqli_insert_id($conn);
$sql=mysqli_query($conn,"INSERT INTO login(login_id,Email,Password) VALUES('$data','$email','$password')");
if($sql){
    $myarray['message']='inserted sucessfully';
}else{
    $myarray['message']='error';
}
echo json_encode($myarray);


?>


