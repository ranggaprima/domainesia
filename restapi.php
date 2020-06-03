<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: OPTIONS,GET,POST,PUT,DELETE");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

    require_once('connection.class.php');
    $connect = new Database();

    $reqMethod = $_SERVER['REQUEST_METHOD'];
    $request = explode('/', trim($_SERVER['PATH_INFO'],'/'));
    $postdata = file_get_contents("php://input") ? json_decode(file_get_contents("php://input")) : false;

    $table = preg_replace('/[^a-z0-9_]+/i','',array_shift($request));
    $id = array_shift($request)+0;

    if ($table) {
        if ($reqMethod == 'GET') {
            $Sql = "SELECT * FROM `$table`".($id ?" WHERE id=$id":'');
            $Query = $connect->start->query($Sql);

            $result = array();
            while($row = $Query->fetch_assoc()) {
                $hasil[]=$row;
            } 
    
            echo json_encode(array('status' => true, 'message' => 'Data show succes', 'data' => $hasil));        
        } elseif ($reqMethod == 'PUT') {
            $Sql = "UPDATE `$table` SET $set WHERE id=$id";
            echo mysqli_insert_id($Sql);
        } elseif ($reqMethod == 'POST') {
            $Sql = "INSERT INTO `$table` SET $set";
            echo mysqli_insert_id($Sql);
        } elseif ($reqMethod == 'DELETE') {
            $Sql = "DELETE `$table` WHERE id = $id";
            echo mysqli_affected_rows($Sql);
        }
    } else {
        echo json_encode(array('status' => false, 'message' => 'Failed'));
    }
?>