<?php
include './config/config.php';
$id = '';
$product_type_name = '';
if (isset($_GET['id'])) {
    $id = $_GET['id'];
}
if ($id > 0 && $id != '') {
    $sqlProductType = "SELECT product_type_name FROM product_type WHERE product_type_id=$id";
    $resultProductType = mysqli_query($con, $sqlProductType);
    if ($resultProductType) {
        $objProductType = mysqli_fetch_object($resultProductType);
        $product_type_name = $objProductType->product_type_name;
    }
}
if ($id > 0 && $id != '') {
    $arrayProduct = array();
    $sqlProduct = "SELECT product.*,product_category.* FROM product "
            . "LEFT JOIN product_category ON product.product_category_id = product_category.pc_id "
            . "WHERE product_status = 'Active' AND product_type_id = $id";
    $resultProduct = mysqli_query($con, $sqlProduct);
    if ($resultProduct) {
        while ($objProduct = mysqli_fetch_object($resultProduct)) {
            $arrayProduct[] = $objProduct;
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Products | <?php echo $product_type_name; ?></title>
        <?php include basePath('header_script.php'); ?>
        <style>
            p{text-align: justify;}
        </style>
    </head>
    <body id="boxed">
        <div class="boxed-wrapper">
            <?php include basePath('header.php'); ?>
            <div class="breadcrumb-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 hidden-xs" >
                            <h4><?php echo $product_type_name; ?></h4>
                        </div>
                        <div class="col-sm-6 hidden-xs text-right">
                            <ol class="breadcrumb">
                                <li><a href="index.php">HOME</a></li>
                                <li>PRODUCTS</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid" style="padding-right: 0px; padding-left: 0px;">
                <h2 style="text-align: center;color: white;font-weight: 600;text-transform: uppercase;letter-spacing: 1px;font-size: 25px;border: 1px solid #367DAB; background-color: #367DAB;"><?php echo $product_type_name; ?></h2>
            </div>                        
            <div class="container" style="min-height: 400px;">
                <div class="row" style="margin-left: 15px;margin-right: 15px;">

                    <?php if (count($arrayProduct) > 0): ?>
                        <?php foreach ($arrayProduct AS $product): ?>
                            <div class="col-md-12" style="box-shadow: 0 1px 3px 0 rgb(236, 236, 236), 0 3px 1px 0 #C9C7C7;">
                                <div class="col-md-3 productDiv" style="">
                                    <div class="item-img-wrap" style="margin-top: 10px;background-color: #F1F0F0;">
                                        <img src="<?php echo baseUrl(); ?>upload/product_image/<?php echo $product->product_image; ?>"class="img-responsive" alt="<?php echo $product->product_title; ?>">

                                    </div>
                                </div> 
                                <div class="col-md-9" style="">
                                    <h4 style="margin-top: 10px;"><?php echo $product->product_title; ?></h4>
                                    <p style="text-align: justify;"><?php echo html_entity_decode($product->product_details); ?></p>
                                </div>

                            </div>
                            <div class="clearfix"></div>
                            <div style="height:30px;"></div>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <h3 style="text-align: center;">No products found in record</h3>
                    <?php endif; ?>     

                </div>
            </div>

            <?php include basePath('footer.php'); ?>
        </div>       

        <?php include basePath('footer_script.php'); ?>
        <script>
            $(document).ready(function () {
                var maxHeight = -1;
                $('.productDiv').each(function () {
                    maxHeight = maxHeight > $(this).height() ? maxHeight : $(this).height();
                });
                $('.productDiv').each(function () {
                    $(this).height(maxHeight);
                });
            });
        </script>
    </body>
</html>
