<?php
include '../../../config/config.php';
header("Content-type: application/json");
$verb = $_SERVER["REQUEST_METHOD"];
if ($verb == "GET") {
    $array = array();
    $sql = "SELECT * FROM equipment ORDER BY equipment_id DESC";
    $result = mysqli_query($con, $sql);
    if ($result) {
        while ($row = mysqli_fetch_object($result)) {
            $array[] = $row;
        }
    } else {
        if (DEBUG) {
            $error = "result error: " . mysqli_error($con);
            echo json_encode($error);
        } else {
            $error = "result query failed.";
            echo json_encode($error);
        }
    }
    echo "{\"data\":" . json_encode($array) . "}";
}
if ($verb == "POST") {

    extract($_POST);
    $equipment_id = mysqli_real_escape_string($con, $equipment_id);
    
    $deleteSql = "DELETE FROM equipment WHERE equipment_id = $equipment_id";
    $resultDelete = mysqli_query($con, $deleteSql);
    if ($resultDelete) {
        echo json_encode($resultDelete);
    } else {
        if (DEBUG) {
            $error = "resultDelete error: " . mysqli_error($con);
            echo json_encode($error);
        } else {
            $error = "resultDelete query failed.";
            echo json_encode($error);
        }
    }
}
?>