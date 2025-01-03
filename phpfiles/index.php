<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *"); 
header("Access-Control-Allow-Methods: GET"); 

include("db.php");

$query = "SELECT * FROM display";
$result = mysqli_query($conn, $query);

if (!$result) {
    http_response_code(500);
    echo json_encode([
        "success" => false,
        "message" => "Query Failed: " . mysqli_error($conn)
    ]);
    exit;
}

$data = [];
while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}

echo json_encode([
    "success" => true,
    "data" => $data
]);
?>
