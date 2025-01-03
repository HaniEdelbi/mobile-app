<?php
include("db.php");
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *"); 
header("Access-Control-Allow-Methods: GET"); 

$method = $_SERVER['REQUEST_METHOD'];

if ($method === 'GET') {
    $id = isset($_GET['id']) ? intval($_GET['id']) : null;
    if ($id) {
        $query = "SELECT * FROM display WHERE id = $id";
        $result = mysqli_query($conn, $query);
        if ($result && mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            echo json_encode([
                "success" => true,
                "data" => $row
            ]);
        } else {
            http_response_code(404);
            echo json_encode([
                "success" => false,
                "message" => "Record not found"
            ]);
        }
    } else {
        http_response_code(400); 
        echo json_encode([
            "success" => false,
            "message" => "Missing or invalid 'id' parameter"
        ]);
    }
} elseif ($method === 'PUT') {
    parse_str(file_get_contents("php://input"), $input);
    $id = isset($input['id']) ? intval($input['id']) : null;
    if ($id && isset($input['name'], $input['description'], $input['image'], $input['date'], $input['season'])) {
        $name = mysqli_real_escape_string($conn, $input['name']);
        $description = mysqli_real_escape_string($conn, $input['description']);
        $image = mysqli_real_escape_string($conn, $input['image']);
        $date = mysqli_real_escape_string($conn, $input['date']);
        $season = mysqli_real_escape_string($conn, $input['season']);

        $query = "UPDATE display SET name='$name', description='$description', image='$image', date='$date', season='$season' WHERE id = $id";
        $result = mysqli_query($conn, $query);

        if ($result) {
            echo json_encode([
                "success" => true,
                "message" => "Record updated successfully",
                "updated_id" => $id
            ]);
        } else {
            http_response_code(500); 
            echo json_encode([
                "success" => false,
                "message" => "Failed to update record",
                "error" => mysqli_error($conn)
            ]);
        }
    } else {
        http_response_code(400); 
        echo json_encode([
            "success" => false,
            "message" => "Missing or invalid parameters"
        ]);
    }
} else {
    http_response_code(405);
    echo json_encode([
        "success" => false,
        "message" => "Invalid request method. Use GET or PUT."
    ]);
}
?>
