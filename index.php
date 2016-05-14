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
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="upload/slider-1.jpg" alt="First slide">
                        <div class="carousel-caption hidden-sm hidden-xs">
                            <h3>Dunham-Bush Air Conditioner</h3>
                            <p style="color: black;">Split Mounted Type</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="upload/slider-2.jpg" alt="Second slide">
                        <div class="carousel-caption hidden-sm hidden-xs">
                            <h3>Dunham-Bush Air Conditioner</h3>
                            <p style="color: black;">Cassette Split Type Inverter</p>
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                    <span class="fa fa-angle-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                    <span class="fa fa-angle-right"></span>
                </a>
            </div>
            <div id="push"></div>
            <!-- Slider End -->
            <section class="services-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="center-heading">
                                <h2>About Company</h2>
                                <span class="center-line"></span>
                            </div>
                            <p style="text-align: justify">
                                Alook Refrigeration Company Limited has been continuing to serve its clients for 
                                the last thirty years and that neither the clients nor Alook Refrigeration have developed any fatigue for each other.
                                Rather, as we observe, bondage is getting stronger and stronger. What was a small proprietorship firm thirty years 
                                back is now a noticeable actor in the field of Air-conditioning.
                            </p>
                        </div>                   
                        <div class="col-md-8">
                            <div class="center-heading">
                                <h2>Why US?</h2>
                                <span class="center-line"></span>
                            </div>
                            <div class="col-md-6">
                                <ul>
                                    <li style="list-style: none;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Outstanding Customer Satisfaction
                                    </li>
                                    <li style="list-style: none;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;High Quality Product & Service
                                    </li>
                                    <li style="list-style: none;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Quality Project Delivery
                                    </li>
                                    <li style="list-style: none;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Excellent Price Quality Ratio
                                    </li>
                                    <li style="list-style: none;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Quick Supply - Respect Deadline
                                    </li>
                                    <li style="list-style: none;">
                                        <i class="fa fa-check"></i>&nbsp;&nbsp;Efficient After Sales Service & Repair
                                    </li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <div class="skills-wrapper wow animated bounceIn animated" data-wow-delay="0.2s">
                                    <h3 class="heading-progress">Air-Conditioning <span class="pull-right">88%</span></h3>
                                    <div class="progress">
                                        <div class="progress-bar" style="width: 88%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="88" role="progressbar">
                                        </div>
                                    </div>
                                    <h3 class="heading-progress">Refrigeration  <span class="pull-right">78%</span></h3>
                                    <div class="progress">
                                        <div class="progress-bar" style="width: 78%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="78" role="progressbar">
                                        </div>
                                    </div>
                                    <h3 class="heading-progress">HVAC & R<span class="pull-right">82%</span></h3>
                                    <div class="progress">
                                        <div class="progress-bar" style="width: 82%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="82" role="progressbar">
                                        </div>
                                    </div>                    
                                </div>
                            </div> 
                        </div> 
                    </div>
                </div>
            </section>
            <!-- Product Section -->
            <?php if (count($arrayProduct) > 0): ?>
                <section class="portfolio">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="center-heading">
                                    <h2>Recent Products</h2>
                                    <span class="center-line"></span>
                                </div>
                            </div>                   
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
                                                <p style="margin-bottom: 20px;"><?php echo $product->product_type_name; ?></p>
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
            <?php include basePath('news_letter.php') ?>
            <?php include basePath('footer.php'); ?>
        </div>
        <?php include basePath('footer_script.php'); ?>
    </body>
</html>
