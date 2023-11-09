<?php
include "connection.php";
$id=$_GET['id'];
var_dump($id);
$sql=mysqli_query($conn,"DELETE FROM food_order WHERE order_id='$id'");


    if($sql)
    {
        echo '<script> alert("order Removed Sucessfully");window.location.href="user_order.php";</script>';
    }
    else{
        echo '<script> alert("something went wrong");</script>';

    }

?>