<?php
header("Content-Type: application/json");
$conn = mysqli_connect('localhost', 'root', '', 'self_orderfood');

if (mysqli_connect_errno()) {
    die('Connection Unsuccessful');
}

$id = $_POST['id'];

$sql = mysqli_query($conn, "SELECT food_details.food_name, food_details.price, food_details.photo, food_order.order_date, food_order.order_id FROM food_details INNER JOIN food_order ON food_details.food_id = food_order.food_id AND food_order.id='$id'");

$myarray = array();

if ($sql) {
    if (mysqli_num_rows($sql) > 0) {
        while ($data = mysqli_fetch_assoc($sql)) {
            $myarray['data'][] = $data;
        }
    } else {
        $myarray['error'] = 'No data found for the given user ID';
    }
} else {
    $myarray['error'] = 'Query error: ' . mysqli_error($conn);
}

echo json_encode($myarray);
?>
