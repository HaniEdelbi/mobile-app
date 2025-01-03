<?php  
include("db.php");

header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *"); 
header("Access-Control-Allow-Methods: GET"); 


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $description = mysqli_real_escape_string($conn, $_POST['description']);
    $image = mysqli_real_escape_string($conn, $_POST['image']);
    $date = mysqli_real_escape_string($conn, $_POST['date']);
    $season = mysqli_real_escape_string($conn, $_POST['season']);

    $query = "INSERT INTO display (name, description, image, date, season) VALUES ('$name', '$description', '$image', '$date', '$season')";
    $result = mysqli_query($conn, $query);

    if ($result) {
        echo json_encode([
            "success" => true,
            "message" => "Record added successfully",
            "data" => [
                "id" => mysqli_insert_id($conn),
                "name" => $name,
                "description" => $description,
                "image" => $image,
                "date" => $date,
                "season" => $season
            ]
        ]);
    } else {
        http_response_code(500); 
        echo json_encode([
            "success" => false,
            "message" => "Failed to add record",
            "error" => mysqli_error($conn)
        ]);
    }
} else {
    http_response_code(405); 
    echo json_encode([
        "success" => false,
        "message" => "Invalid request method. Use POST."
    ]);
}
?>
