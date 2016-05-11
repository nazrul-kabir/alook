<?php
include '../../../config/config.php';
$product_id = "";
$product_title = '';
$product_details = '';

if (isset($_GET['id'])) {
    $product_id = $_GET['id'];
}
$sql = "SELECT product_title,product_details FROM product WHERE product_id=$product_id";
$result = mysqli_query($con, $sql);
if ($result) {
    $obj = mysqli_fetch_object($result);
    $product_title = $obj->product_title;
    $product_details = $obj->product_details;
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | View Product Details</title>
        <?php include basePath('admin/header_script.php'); ?>

    </head>
    <body class="skin-blue">
        <div class="wrapper">
            <?php include basePath('admin/header.php'); ?>

            <aside class="main-sidebar">
                <?php include basePath('admin/site_menu.php'); ?>
            </aside>
            <div class="content-wrapper">
                <section class="content-header">
                    <h1>View Product Details of <?php echo $product_title; ?></h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-laptop"></i>&nbsp;Product Settings</li>
                        <li class="active">View Product Details</li>
                    </ol>
                </section>
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-primary">
                                <div class="panel panel-default">
                                    <div class="panel-body"><?php echo html_entity_decode($product_details, ENT_QUOTES | ENT_IGNORE, "UTF-8");; ?></div>
                                </div>
                                <a style="float: right;" href="<?php echo baseUrl(); ?>admin/view/product/list.php">
                                    <button type="button" class="btn btn-default">Go Back</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <?php include basePath('admin/footer.php'); ?>
        </div>
        <script type="text/javascript">
            $("#productActive").addClass("active");
            $("#productActive").parent().parent().addClass("treeview active");
            $("#productActive").parent().addClass("in");
        </script>
        <?php include basePath('admin/footer_script.php'); ?>
    </body>
</html>