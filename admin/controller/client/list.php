<?php

include '../../../config/config.php';
header("Content-type: application/json");
$verb = $_SERVER["REQUEST_METHOD"];
if ($verb == "GET") {
    $array = array();
    $sql = "SELECT * FROM client ORDER BY client_id DESC";
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
    $clientImage = '';
    $arrayImage = array();
    $client_id = mysqli_real_escape_string($con, $client_id);
    $sqlImage = "SELECT client_image FROM client WHERE client_id = $client_id";
    $resultImage = mysqli_query($con, $sqlImage);
    if ($resultImage) {
        $arrayImage = mysqli_fetch_object($resultImage);
        $clientImage = $arrayImage->client_image;
        if ($clientImage != '') {
            unlink($config['IMAGE_UPLOAD_PATH'] . '/client_image/' . $clientImage);
        }
    } else {
        if (DEBUG) {
            $error = "resultImage error: " . mysqli_error($con);
            echo json_encode($error);
        } else {
            $error = "resultImage query failed";
            echo json_encode($error);
        }
    }

    $deleteSql = "DELETE FROM client WHERE client_id = $client_id";
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