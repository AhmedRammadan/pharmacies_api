<?php
class Users{
 
    // database connection and table name
    private $conn;
    private $table_name = "users";

    // object properties
    public $id;
    public $pharmacy_name;
    public $pharmacist_name;
    public $phone_numbre;
    public $created;
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }
    // read products
function read(){
    // select all query
    $query = "SELECT * FROM " . $this->table_name;
 
    // prepare query statement
    $stmt = $this->conn->prepare($query);
 
    // execute query
    $stmt->execute();
 
    return $stmt;
}
// create product
function create(){
 
    // query to insert record
    $query = "INSERT INTO
                " . $this->table_name . "
            SET
                pharmacy_name=:pharmacy_name,pharmacist_name=:pharmacist_name, phone_numbre=:phone_numbre";
 
    // prepare query
    $stmt = $this->conn->prepare($query);
 
    // sanitize
    $this->pharmacy_name=htmlspecialchars(strip_tags($this->pharmacy_name));
    $this->pharmacist_name=htmlspecialchars(strip_tags($this->pharmacist_name));
    $this->phone_numbre=htmlspecialchars(strip_tags($this->phone_numbre));
 
    // bind values
    $stmt->bindParam(":pharmacy_name", $this->pharmacy_name);
    $stmt->bindParam(":pharmacist_name", $this->pharmacist_name);
    $stmt->bindParam(":phone_numbre", $this->phone_numbre);
 
    // execute query
    if($stmt->execute()){
        return true;
    }
 
    return false;
     
}
 //update the product
function update(){
    // update query
    $query = "UPDATE
                " . $this->table_name . "
            SET
                pharmacy_name = :pharmacy_name,
                pharmacist_name = :pharmacist_name,
                phone_numbre = :phone_numbre,
                created = :created
            WHERE
                id = :id";
 
    // prepare query statement
    $stmt = $this->conn->prepare($query);
 
    // sanitize
    $this->pharmacy_name=htmlspecialchars(strip_tags($this->pharmacy_name));
    $this->pharmacist_name=htmlspecialchars(strip_tags($this->pharmacist_name));
    $this->phone_numbre=htmlspecialchars(strip_tags($this->phone_numbre));
    $this->created=htmlspecialchars(strip_tags($this->created));
    $this->id=htmlspecialchars(strip_tags($this->id));
 
    // bind new values
    $stmt->bindParam(':pharmacy_name', $this->pharmacy_name);
    $stmt->bindParam(':pharmacist_name', $this->pharmacist_name);
    $stmt->bindParam(':phone_numbre', $this->phone_numbre);
    $stmt->bindParam(':created', $this->created);
    $stmt->bindParam(':id', $this->id);
 
    // execute the query
    if($stmt->execute()){
        return true;
    }
 
    return false;
}
// delete the product
function delete(){
 
    // delete query
    $query = "DELETE FROM " . $this->table_name . " WHERE id = ?";
 
    // prepare query
    $stmt = $this->conn->prepare($query);
 
    // sanitize
    $this->id=htmlspecialchars(strip_tags($this->id));
 
    // bind id of record to delete
    $stmt->bindParam(1, $this->id);
 
    // execute query
    if($stmt->execute()){
        return true;
    }
 
    return false;
     
}
// search products
function search(){
 
    // select all query
    $query = "SELECT * FROM " . $this->table_name . " WHERE id = ?";

    // prepare query statement
    $stmt = $this->conn->prepare($query);
    
    $this->id=htmlspecialchars(strip_tags($this->id));
 
     $stmt->bindParam(1, $this->id);
 
    // execute query
    $stmt->execute();
 
    return $stmt;
}
// function read(){
//     // select all query
//     $query = "SELECT * FROM " . $this->table_name;
 
//     // prepare query statement
//     $stmt = $this->conn->prepare($query);
 
//     // execute query
//     $stmt->execute();
 
//     return $stmt;
// }
}