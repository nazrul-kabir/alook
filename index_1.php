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
                        <div class="col-md-6" style="background-color: #10218B;height:289px; box-shadow: 0 0px 0px 0 rgb(41, 39, 39), 0 5px 25px 0 rgb(115, 110, 110); border: 1px solid #969595; padding: 10px;padding-right: 5px;">
                            <div class="center-heading">
                                <h2 style="color: white;letter-spacing: 1px;font-size: 25px;">About Company</h2>
                                <span class="center-line"></span>
                            </div>
                            <p style="text-align: justify;color: #CCC;">
                                Alook Refrigeration Company Limited has been continuing to serve its clients for 
                                the last thirty years and that neither the clients nor Alook Refrigeration have developed any fatigue for each other.
                                Rather, as we observe, bondage is getting stronger and stronger. What was a small proprietorship firm thirty years 
                                back is now a noticeable actor in the field of Air-conditioning.
                            </p>
                        </div>                   
                        <div class="col-md-6" style="background-color: #10218B;height:289px; box-shadow: 0 0px 0px 0 rgb(41, 39, 39), 0 5px 25px 0 rgb(115, 110, 110); border: 1px solid #969595; padding: 10px;padding-left: 5px;">
                            <div class="center-heading">
                                 <h2 style="color: white;letter-spacing: 1px;font-size: 25px;">Why US?</h2>
                                <span class="center-line"></span>
                            </div>   
                            <div class="col-md-2 hidden-xs hidden-sm"></div>
                            <div class="col-md-8">
                                <ul>
                                    <li style="list-style: none;color: #CCC;">
                                        <i class="fa fa-check" style=""></i>&nbsp;&nbsp;Outstanding Customer Satisfaction
                                    </li>
                                    <li style="list-style: none;color: #CCC;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;High Quality Product & Service
                                    </li>
                                    <li style="list-style: none;color: #CCC;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Quality Project Delivery
                                    </li>
                                    <li style="list-style: none;color: #CCC;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Excellent Price Quality Ratio
                                    </li>
                                    <li style="list-style: none;color: #CCC;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Quick Supply - Respect Deadline
                                    </li>
                                    <li style="list-style: none;color: #CCC;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Efficient After Sales Service & Repair
                                    </li>
                                </ul> 
                            </div>
                            <div class="col-md-2 hidden-sm hidden-xs"></div>
                        </div> 
                    </div>
                </div>
            </section>
            <section class="fun-fact-wrap parallax" data-stellar-background-ratio="0.5" style="background-position: 0% -47px;">
                <div class="container">               
                    <div class="row">
                        <div class="col-md-3 margin20 facts-in">
                            <h3><i class="fa fa-image" style="color: whitesmoke;"></i><span class="counter">39</span></h3>
                            <h4>Projects Completed</h4>
                        </div><!--facts in-->
                        <div class="col-md-3 margin20 facts-in">
                            <h3><i class="fa fa-users" style="color: whitesmoke;"></i><span class="counter">200</span>+</h3>
                            <h4>Happy Customers</h4>
                        </div><!--facts in-->
                        <div class="col-md-3 margin20 facts-in">
                            <h3><i class="fa fa-clock-o" style="color: whitesmoke;"></i><span class="counter">30</span>+</h3>
                            <h4>Years Of Experience </h4>
                        </div><!--facts in-->
                        <div class="col-md-3 margin20 facts-in">
                            <h3><i class="fa fa-coffee" style="color: whitesmoke;"></i><span class="counter">2500</span></h3>
                            <h4>Cups of tea</h4>
                        </div><!--facts in-->
                    </div>
                </div>
            </section>
            <!-- Product Section -->
            <?php if (count($arrayProduct) > 0): ?>
                <section class="portfolio">
                    <div class="container">
                        <div class="row">
                            <div class="divide2"></div>
                            <h2 style="text-align: center;padding: 5px;box-shadow: 0px 7px 5px #888888;color: white;font-weight: 600;text-transform: uppercase;letter-spacing: 1px;font-size: 25px;border: 1px solid #10218B; background-color: #10218B"><i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;Products</h2>                                              
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
                        <!--                        
                        <div class="divide30"></div>
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <a href="javascript:void(0);" class="btn border-theme btn-lg wow animated fadeInUp"><i class="fa fa-bars"></i> Load More Products</a>
                                </div>
                            </div>
                        -->
                    </div>
                </section>
            <?php endif; ?>
            <?php include basePath('news_section.php'); ?>                   
            <?php include basePath('clients_section.php'); ?>
            <?php // include basePath('news_letter.php') ?>
            <?php include basePath('footer_index.php'); ?>
        </div>
        <?php include basePath('footer_script.php'); ?>
    </body>
</html>
