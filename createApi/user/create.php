<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
// get database connection
include_once '../config/database.php';
 
// instantiate users object
include_once '../objects/users.php';
 
$database = new Database();
$db = $database->getConnection();
 
$users = new Users($db);
 
// get posted data
$data = json_decode(file_get_contents("php://input"));
 
// make sure data is not empty
if(
    !empty($data->pharmacy_name) &&
    !empty($data->pharmacist_name) &&
    !empty($data->phone_numbre) 
){
 
    // set users property values
    $users->pharmacy_name = $data->pharmacy_name;
    $users->pharmacist_name = $data->pharmacist_name;
    $users->phone_numbre = $data->phone_numbre;
    $users->created = date('Y-m-d H:i:s');
 
    // create the users
    if($users->create()){
 
        // set response code - 201 created
        http_response_code(201);
 
        // tell the user
        echo json_encode(array("message" => "users was created."));
    }
 
    // if unable to create the users, tell the user
    else{
 
        // set response code - 503 service unavailable
        http_response_code(503);
 
        // tell the user
        echo json_encode(array("message" => "Unable to create users."));
    }
}
 
// tell the user data is incomplete
else{
 
    // set response code - 400 bad request
    http_response_code(400);
 
    // tell the user
    echo json_encode(array("message" => "Unable to create product. Data is incomplete."));
}
?>