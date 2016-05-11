<?php
include '../../../config/config.php';
header("Content-type: application/json");
$verb = $_SERVER["REQUEST_METHOD"];
if ($verb == "GET") {
    $array = array();
    $sql = "SELECT product.*,product_category.*,product_type.* FROM product"
            . " LEFT JOIN product_category ON product.product_category_id = product_category.pc_id"
            . " LEFT JOIN product_type ON product.product_type_id = product_type.product_type_id"
            . " ORDER BY product_id DESC";
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

    $arrayImage = array();
    $product_id = mysqli_real_escape_string($con, $product_id);
    $sqlImage = "SELECT product_image FROM product WHERE product_id = $product_id";
    $resultImage = mysqli_query($con, $sqlImage);
    if ($resultImage) {
        $arrayImage = mysqli_fetch_array($resultImage);
        unlink($config['IMAGE_UPLOAD_PATH'] . '/product_image/' . $arrayImage["product_image"]);
    } else {
        if (DEBUG) {
            $error = "resultImage error: " . mysqli_error($con);
            echo json_encode($error);
        } else {
            $error = "resultImage query failed";
            echo json_encode($error);
        }
    }

    $deleteSql = "DELETE FROM product WHERE product_id = $product_id";
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