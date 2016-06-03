<?php
include './config/config.php';
$arrayProduct = array();
$sqlProduct = "SELECT product.*,product_type.* FROM product "
        . "LEFT JOIN product_type ON product.product_type_id = product_type.product_type_id "
        . "WHERE product_status = 'Active' ORDER BY product_created_on DESC";
$resultProduct = mysqli_query($con, $sqlProduct);
if ($resultProduct) {
    while ($objProduct = mysqli_fetch_object($resultProduct)) {
        $arrayProduct[] = $objProduct;
    }
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration Co. Ltd | Home</title>
        <?php include basePath('header_script.php'); ?>    
    </head>
    <body id="boxed">
        <div class="boxed-wrapper">
            <?php include basePath('header.php'); ?>            
            <!-- Slider Start -->
            <?php include './banner.php'; ?>
            <!-- Slider End -->
            <section class="services-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6" style="background-color: #367DAB;height:289px; padding: 10px;padding-right: 5px;">
                            <div class="center-heading">
                                <h2 style="color: white;letter-spacing: 1px;font-size: 25px;margin-top: 25px;margin-left: -10px;">About Company</h2>
                            </div>
                            <p style="text-align: justify;color: white;padding-left: 75px;padding-right: 75px;margin-top: -31px;">
                                Alook Refrigeration Company Limited has been continuing to serve its clients for 
                                the last forty five years and that neither the clients nor Alook Refrigeration have developed any fatigue for each other.
                                Rather, as we observe, bondage is getting stronger and stronger. What was a small proprietorship firm forty five years 
                                back is now a noticeable actor in the field of Air-conditioning.
                            </p>
                        </div>                   
                        <div class="col-md-6" style="background-color: #367DAB;height:289px; padding: 10px;padding-left: 5px;">
                            <div class="center-heading">
                                 <h2 style="color: white;letter-spacing: 1px;font-size: 25px;margin-top: 25px;margin-left: -10px;">Why US?</h2>
                            </div>   
                            <div class="col-md-2 hidden-xs hidden-sm"></div>
                            <div class="col-md-8" style="margin-top: -31px;">
                                <ul>
                                    <li style="list-style: none;color: white;">
                                        <i class="fa fa-check" style=""></i>&nbsp;&nbsp;Outstanding Customer Satisfaction
                                    </li>
                                    <li style="list-style: none;color: white;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;High Quality Product & Service
                                    </li>
                                    <li style="list-style: none;color: white;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Quality Project Delivery
                                    </li>
                                    <li style="list-style: none;color: white;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Excellent Price Quality Ratio
                                    </li>
                                    <li style="list-style: none;color: white;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Quick Supply - Respect Deadline
                                    </li>
                                    <li style="list-style: none;color: white;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Efficient After Sales Service & Repair
                                    </li>
                                </ul> 
                            </div>
                            <div class="col-md-2 hidden-sm hidden-xs"></div>
                        </div> 
                    </div>
                </div>
            </section>
            <?php include './counter_section.php'; ?>
            <!-- Product Section -->
            <?php if (count($arrayProduct) > 0): ?>
                <section class="portfolio">
                    <div class="container">
                        <div class="row">
                            <h2 style="text-align: center;padding: 5px;color: white;font-weight: 600;text-transform: uppercase;letter-spacing: 1px;font-size: 25px;border: 1px solid #367DAB; background-color: #367DAB"><i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;Products</h2>                                              
                        </div>
                        <div class="row">
                            <div class="col-md-12">                              
                                <div id="product-carousel" class="owl-carousel owl-spaced">
                                    <?php foreach ($arrayProduct AS $product): ?>
                                        <div>
                                            <div class="item-img-wrap">
                                                <img src="<?php echo baseUrl(); ?>upload/product_image/<?php echo $product->product_image; ?>" class="img-responsive" alt="<?php echo $product->product_title; ?>">
                                                <div class="item-img-overlay">
                                                    <a href="<?php echo baseUrl(); ?>upload/product_image/<?php echo $product->product_image; ?>" class="show-image">
                                                        <span></span>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="work-desc">
                                                <h5><a href="javascript:void(0);"><?php echo $product->product_title; ?></a></h5>
                                            </div>
                                        </div>
                                    <?php endforeach; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            <?php endif; ?>
            <?php include basePath('news_section.php'); ?>                   
            <?php include basePath('clients_section.php'); ?>
            <?php include basePath('footer_index.php'); ?>
        </div>
        <?php include basePath('footer_script.php'); ?>
    </body>
</html>
