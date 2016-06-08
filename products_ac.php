<?php
include './config/config.php';
$arrayProduct = array();
$sqlProduct = "SELECT product.*,product_type.* FROM product "
        . "LEFT JOIN product_type ON product.product_type_id = product_type.product_type_id "
        . "WHERE product_status = 'Active' AND product.product_type_id !='3' AND product_category_id = '1' ORDER BY product_created_on DESC";
$resultProduct = mysqli_query($con, $sqlProduct);
if ($resultProduct) {
    while ($objProduct = mysqli_fetch_object($resultProduct)) {
        $arrayProduct[] = $objProduct;
    }
//    debug($arrayProduct);
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Products</title>
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
                        <div class="col-sm-6">
                            <h4>Water Cooled Chiller</h4>
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
            <div class="container" style="min-height: 400px;">
                <div class="divide40"></div>
                <div class="row">
                    <div class="col-md-12">
<!--                        <div class="center-heading">
                            <h2>Water Cooled Chiller</h2>
                            <span class="center-line"></span>
                        </div>-->
                        <?php if (count($arrayProduct) > 0): ?>
                            <?php foreach ($arrayProduct AS $product): ?>
                                <div class="col-md-3 productDiv">
                                    <div class="item-img-wrap ">
                                        <img src="<?php echo baseUrl(); ?>upload/product_image/<?php echo $product->product_image; ?>"class="img-responsive" alt="<?php echo $product->product_title; ?>">
                                        <div class="item-img-overlay">
                                            <a href="#" data-toggle="modal" data-target="#myModal<?php echo $product->product_id; ?>">
                                                <span></span>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="work-desc">
                                        <h5><a href="#" data-toggle="modal" data-target="#myModal<?php echo $product->product_id; ?>"><?php echo $product->product_title; ?></a></h5>
                                    </div>
                                </div> 
                                <div class="modal fade" id="myModal<?php echo $product->product_id; ?>" role="dialog">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header" style="border-bottom: 1px solid white;">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title" style="color: #10218B;"><?php echo $product->product_title; ?></h4>
                                            </div>
                                            <div class="col-md-6">
                                                <img style="margin-top: 10px;" src="<?php echo baseUrl(); ?>upload/product_image/<?php echo $product->product_image; ?>"class="img-responsive" alt="<?php echo $product->product_title; ?>">
                                            </div>
                                            <div class="col-md-6">
                                                <p><?php echo html_entity_decode($product->product_details, ENT_QUOTES | ENT_IGNORE, "UTF-8"); ?></p>
                                            </div>
                                            <div class="modal-footer"></div>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        <?php else: ?>
                            <h3 style="text-align: center;">No products found in record</h3>
                        <?php endif; ?>                
                    </div>                      
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
