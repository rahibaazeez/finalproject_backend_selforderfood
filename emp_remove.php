<?php
include "connection.php";
$id=$_GET['id'];
$sql=mysqli_query($conn,"DELETE FROM food_details WHERE food_id='$id'");

    if($sql)
    {
        echo '<script> alert("Food Removed Sucessfully");window.location.href="emp_view.php";</script>';
    }
    else{
        echo '<script> alert("something went wrong");</script>';

    }

?>