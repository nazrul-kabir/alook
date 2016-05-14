<?php
include './config/config.php';
$array_client = array();
$sql_client = "SELECT * FROM client WHERE client_status='Active'";
$result_client = mysqli_query($con, $sql_client);
if ($result_client) {
    while ($obj_client = mysqli_fetch_object($result_client)) {
        $array_client[] = $obj_client;
    }
//    debug($array_client);
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Our Valuable Clients</title>
        <?php include './header_script.php'; ?>
        <style>
            ul > li{list-style: none;}
        </style>
    </head>
    <body id="boxed">
        <div class="boxed-wrapper">
            <?php include './header.php'; ?>  
            <div class="breadcrumb-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4>OUR VALUABLE CLIENTS</h4>
                        </div>
                        <div class="col-sm-6 hidden-xs text-right">
                            <ol class="breadcrumb">
                                <li><a href="index.php">HOME</a></li>
                                <li>CLIENTS</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="divide80"></div>
                <div class="row">
                    <?php if (count($array_client) > 0): ?>
                        <?php foreach ($array_client AS $client): ?>
                            <div class="col-md-4">
                                <ul>
                                    <li><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> <?php echo $client->client_name; ?> </li>
                                </ul>
                            </div>
                            
                        <?php endforeach; ?>
                    <?php endif; ?>
                </div>
            </div>
            <?php include './news_letter.php'; ?>
            <?php include './footer.php'; ?>
        </div>
        <?php include './footer_script.php'; ?>
    </body>
</html>
