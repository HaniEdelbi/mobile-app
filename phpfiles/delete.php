<?php
include("db.php");

header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *"); 
header("Access-Control-Allow-Methods: GET");


if ($_SERVER['REQUEST_METHOD'] === 'DELETE') {
    parse_str(file_get_contents("php://input"), $input);
    
    $id = isset($input['id']) ? intval($input['id']) : null;

    if ($id) {
        $query = "DELETE FROM display WHERE id = $id";
        $result = mysqli_query($conn, $query);

        if ($result) {
            echo json_encode([
                "success" => true,
                "message" => "Record deleted successfully",
                "deleted_id" => $id
            ]);
        } else {
            http_response_code(500); 
            echo json_encode([
                "success" => false,
                "message" => "Failed to delete record",
                "error" => mysqli_error($conn)
            ]);
        }
    } else {
        http_response_code(400); 
        echo json_encode([
            "success" => false,
            "message" => "Missing or invalid 'id' parameter"
        ]);
    }
} else {
    http_response_code(405); 
    echo json_encode([
        "success" => false,
        "message" => "Invalid request method. Use DELETE."
    ]);
}
?>
