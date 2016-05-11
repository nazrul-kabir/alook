<?php
include './config/config.php';
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration Co. Ltd</title>
        <?php include './header_script.php'; ?>    
    </head>
    <body id="boxed">
        <div class="boxed-wrapper">
            <?php include './header.php'; ?>            
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
                        <div class="col-md-12">
                            <div class="center-heading">
                                <h2>Why Us?</h2>
                                <span class="center-line"></span>
                            </div>
                        </div>                   
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-sm-6 margin20">
                            <div class="services-box wow animated fadeInUp" data-wow-duration="700ms" data-wow-delay="100ms">
                                <div class="services-box-icon">
                                    <i class="fa fa-pencil"></i>
                                </div><!--services icon-->
                                <div class="services-box-info">
                                    <h4>Outstanding Customer Satisfaction</h4>
                                    <p>Some Text Will Go Here. Some Text Will Go Here. </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 margin20">
                            <div class="services-box wow animated fadeInUp" data-wow-duration="700ms" data-wow-delay="200ms">
                                <div class="services-box-icon">
                                    <i class="fa fa-globe"></i>
                                </div>
                                <div class="services-box-info">
                                    <h4>High Quality Product & Service</h4>
                                    <p>Some Text Will Go Here. Some Text Will Go Here. </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 margin20">
                            <div class="services-box wow animated fadeInUp" data-wow-duration="700ms" data-wow-delay="300ms">
                                <div class="services-box-icon">
                                    <i class="fa fa-users"></i>
                                </div><!--services icon-->
                                <div class="services-box-info">
                                    <h4>Quality Project Delivery</h4>
                                    <p>Some Text Will Go Here. Some Text Will Go Here. </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 margin20">
                            <div class="services-box wow animated fadeInUp" data-wow-duration="700ms" data-wow-delay="400ms">
                                <div class="services-box-icon">
                                    <i class="fa fa-crop"></i>
                                </div><!--services icon-->
                                <div class="services-box-info">
                                    <h4>Excellent Price Quality Ratio</h4>
                                    <p>Some Text Will Go Here. Some Text Will Go Here. </p>
                                </div>
                            </div><!--services box-->
                        </div><!--services col-->
                        <div class="col-md-4 col-sm-6 margin20">
                            <div class="services-box wow animated fadeInUp" data-wow-duration="700ms" data-wow-delay="500ms">
                                <div class="services-box-icon">
                                    <i class="fa fa-twitter"></i>
                                </div><!--services icon-->
                                <div class="services-box-info">
                                    <h4>Quick Supply - Respect Deadline</h4>
                                    <p>Some Text Will Go Here. Some Text Will Go Here. </p>
                                </div>
                            </div><!--services box-->
                        </div><!--services col-->
                        <div class="col-md-4 col-sm-6 margin20">
                            <div class="services-box wow animated fadeInUp" data-wow-duration="700ms" data-wow-delay="600ms">
                                <div class="services-box-icon">
                                    <i class="fa fa-flag"></i>
                                </div><!--services icon-->
                                <div class="services-box-info">
                                    <h4>Efficient After Sales Service & Repair</h4>
                                    <p>Some Text Will Go Here. Some Text Will Go Here. </p>

                                </div>
                            </div><!--services box-->
                        </div><!--services col-->
                    </div><!--services row-->
                </div>
            </section><!--section services-->
            <section class="portfolio">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="center-heading">
                                <h2>Latest Products</h2>
                                <span class="center-line"></span>
                            </div>
                        </div>                   
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div id="work-carousel" class="owl-carousel owl-spaced">
                                <div>
                                    <div class="item-img-wrap ">
                                        <img src="img/product/latest-pro.png" class="img-responsive" alt="workimg">
                                        <div class="item-img-overlay">
                                            <a href="img/product/latest-pro.png" class="show-image">
                                                <span></span>
                                            </a>
                                        </div>
                                    </div> <!--item img wrap-->
                                    <div class="work-desc">
                                        <h4><a href="#">Wall Mounted Fan coil Unit</a></h4>
                                        <span>Dunham-Bush</span>
                                    </div><!--work desc-->
                                </div><!--owl item-->
                                <div>
                                    <div class="item-img-wrap ">
                                        <img src="img/product/latest-pro.png" class="img-responsive" alt="workimg">
                                        <div class="item-img-overlay">
                                            <a href="img/product/latest-pro.png" class="show-image">
                                                <span></span>
                                            </a>
                                        </div>
                                    </div> <!--item img wrap-->
                                    <div class="work-desc">
                                        <h4><a href="#">Wall Mounted Fan coil Unit</a></h4>
                                        <span>Dunham-Bush</span>
                                    </div><!--work desc-->
                                </div><!--owl item-->
                                <div>
                                    <div class="item-img-wrap ">
                                        <img src="img/product/latest-pro.png" class="img-responsive" alt="workimg">
                                        <div class="item-img-overlay">
                                            <a href="img/product/latest-pro.png" class="show-image">
                                                <span></span>
                                            </a>
                                        </div>
                                    </div> <!--item img wrap-->
                                    <div class="work-desc">
                                        <h4><a href="#">Wall Mounted Fan coil Unit</a></h4>
                                        <span>Dunham-Bush</span>
                                    </div><!--work desc-->
                                </div><!--owl item-->
                                <div>
                                    <div class="item-img-wrap ">
                                        <img src="img/product/latest-pro.png" class="img-responsive" alt="workimg">
                                        <div class="item-img-overlay">
                                            <a href="img/product/latest-pro.png" class="show-image">
                                                <span></span>
                                            </a>
                                        </div>
                                    </div> <!--item img wrap-->
                                    <div class="work-desc">
                                        <h4><a href="#">Wall Mounted Fan coil Unit</a></h4>
                                        <span>Dunham-Bush</span>
                                    </div><!--work desc-->
                                </div><!--owl item-->
                                <div>
                                    <div class="item-img-wrap ">
                                        <img src="img/product/latest-pro.png" class="img-responsive" alt="workimg">
                                        <div class="item-img-overlay">
                                            <a href="img/product/latest-pro.png" class="show-image">
                                                <span></span>
                                            </a>
                                        </div>
                                    </div> <!--item img wrap-->
                                    <div class="work-desc">
                                        <h4><a href="#">Wall Mounted Fan coil Unit</a></h4>
                                        <span>Dunham-Bush</span>
                                    </div><!--work desc-->
                                </div><!--owl item-->

                            </div>
                        </div>
                    </div><!--row-->
                    <div class="divide30"></div>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <a href="#" class="btn border-theme btn-lg wow animated fadeInUp"><i class="fa fa-bars"></i> Load More Products</a>
                        </div>
                    </div>
                </div><!--container-->
            </section><!--recent work section -->
            <div class="divide80"></div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-5">
                        <h3 class="heading">About Company</h3>
                        <p>Alook Refrigeration Company Limited has been continuing to serve its clients for 
                            the last thirty years and that neither the clients nor Alook Refrigeration have developed any fatigue for each other.
                            Rather, as we observe, bondage is getting stronger and stronger. What was a small proprietorship firm thirty years 
                            back is now a noticeable actor in the field of Air-conditioning.
                        </p>
                    </div>
                    <div class="col-sm-7">
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
                        </div><!--skills-->
                    </div>
                </div>
            </div><!--about and progress section end-->                                 
            <div class="container">
                <div class="row">
                    <?php include './news_section.php'; ?>                    
                </div>
            </div>
            <?php include './clients_section.php'; ?>
            <?php include './news_letter.php';; ?>
            <?php include './footer.php'; ?>
        </div>
        <?php include './footer_script.php'; ?>
    </body>
</html>
