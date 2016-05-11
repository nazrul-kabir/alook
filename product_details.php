<?php
include './config/config.php';
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Products</title>
        <?php include './header_script.php'; ?>
        <style>
            p{
                text-align: justify;
            }
        </style>
    </head>
    <body id="boxed">
        <div class="boxed-wrapper">
            <?php include './header.php'; ?>  
            <div class="breadcrumb-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4>PRODUCT DETAILS</h4>
                        </div>
                        <div class="col-sm-6 hidden-xs text-right">
                            <ol class="breadcrumb">
                                <li><a href="index.php">HOME</a></li>
                                <li>PRODUCT DETAILS</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="divide20"></div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="center-heading">
                            <h2>PRODUCT DETAILS </h2>
                            <span class="center-line"></span>
                        </div>
                        <div class="col-md-4">
                            <img src="upload/product_1.jpg"class="img-responsive" alt="workimg">
                        </div>
                        <div class="col-md-8">
                            <p>Cooling Capacity from 115 to 470RT (406 to 1656kW). The AVX-B Series features:-</p>
                            <ul>
                                <li>High Efficiency Screw Chiller</li>
                                <li>Inverter Driven Compressor</li>
                                <li>Flooded Shell and Tube Evaporator</li>
                                <li>Advanced Microprocessor Controller</li>
                            </ul>
                        </div> 
                        <div class="col-md-12" style="height: 20px;"></div>
                        <section class="portfolio">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="center-heading">
                                            <h2>Related Products</h2>
                                            <span class="center-line"></span>
                                        </div>
                                    </div>                   
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div id="work-carousel" class="owl-carousel owl-spaced">
                                            <div>
                                                <div class="item-img-wrap ">
                                                    <img src="upload/product_1.jpg" class="img-responsive" alt="workimg">
                                                    <div class="item-img-overlay">
                                                        <a href="upload/product_1.jpg" class="show-image">
                                                            <span></span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="work-desc">
                                                    <h4><a href="#">Wall Mounted Fan coil Unit</a></h4>
                                                    <span>Dunham-Bush</span>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="item-img-wrap ">
                                                    <img src="upload/product_2.jpg" class="img-responsive" alt="workimg">
                                                    <div class="item-img-overlay">
                                                        <a href="upload/product_2.jpg" class="show-image">
                                                            <span></span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="work-desc">
                                                    <h4><a href="#">Wall Mounted Fan coil Unit</a></h4>
                                                    <span>Dunham-Bush</span>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="item-img-wrap ">
                                                    <img src="upload/product_3.jpg" class="img-responsive" alt="workimg">
                                                    <div class="item-img-overlay">
                                                        <a href="upload/product_3.jpg" class="show-image">
                                                            <span></span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="work-desc">
                                                    <h4><a href="#">Wall Mounted Fan coil Unit</a></h4>
                                                    <span>Dunham-Bush</span>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="item-img-wrap ">
                                                    <img src="upload/product_4.jpg" class="img-responsive" alt="workimg">
                                                    <div class="item-img-overlay">
                                                        <a href="upload/product_4.jpg" class="show-image">
                                                            <span></span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="work-desc">
                                                    <h4><a href="#">Floor Stand Ducted</a></h4>
                                                    <span>Dunham-Bush</span>
                                                </div>
                                            </div>
                                            <div>
                                                <div class="item-img-wrap ">
                                                    <img src="upload/product_3.jpg" class="img-responsive" alt="workimg">
                                                    <div class="item-img-overlay">
                                                        <a href="upload/product_3.jpg" class="show-image">
                                                            <span></span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="work-desc">
                                                    <h4><a href="#">Wall Mounted Fan coil Unit</a></h4>
                                                    <span>Dunham-Bush</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>                                
                            </div>
                        </section>
                    </div>                      
                </div>               
            </div>                   
            <?php include './news_letter.php'; ?>
            <?php include './footer.php'; ?>
        </div>
        <?php include './footer_script.php'; ?>
    </body>
</html>
