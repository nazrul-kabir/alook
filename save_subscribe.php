<?php

include './config/config.php';
extract($_POST);
$returnArray = array();
$sub_email = validateInput($sub_email);
if ($sub_email != '') {
    $sqlSub = "INSERT INTO subscribe (`sub_email`) VALUES('$sub_email')";
    $resultSub = mysqli_query($con, $sqlSub);
    if ($resultSub) {
        $success = "Thank you for subscription";
        $returnArray = array(
            "output" => "success",
            'msg' => $success,
            'flag' => '1'
        );
        echo json_encode($returnArray);
    } else {

        if (DEBUG) {
            $error = "Something went wrong. Error for " . mysqli_error($con);
        } else {
            $error = "Something went wrong. Please try again";
        }
        $returnArray = array(
            "output" => "error",
            'msg' => $error,
            'flag' => '0'
        );
    }
}
?>