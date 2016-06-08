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
        <?php include basePath('header_script.php'); ?>
    </head>
    <body id="boxed">
        <div class="boxed-wrapper">
            <?php include basePath('header.php'); ?>
            <div class="breadcrumb-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4>News Details</h4>
                        </div>
                        <div class="col-sm-6 hidden-xs text-right">
                            <ol class="breadcrumb">
                                <li><a href="index.php">Home</a></li>
                                <li>Latest News</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="divide80"></div>                
                <div class="row">
                    <div class="col-md-8">
                        <div class="blog-post">
                            <div>
                                <img src="img/showcase-2.jpg" class="img-responsive" alt="workimg">
                            </div>                                                   
                            <h2>News Title</h2>
                            <p>Some text here... Some text here... Some text here...</p>
                            <p class="lead">Some text here... Some text here... Some text here...</p>

                            <p class="dropcap">Some text here... Some text here... Some text here...</p> 
                        </div><!--blog post-->                                               
                    </div><!--col-->
                    <div class="col-md-3 col-md-offset-1">
                        <div class="sidebar-box margin40">
                            <h4>Search</h4>
                            <form role="form" class="search-widget">
                                <input type="text" class="form-control">
                                <i class="fa fa-search"></i>
                            </form>
                        </div><!--sidebar-box-->                        
                        <div class="sidebar-box margin40">
                            <h4>Categories</h4>
                            <ul class="list-unstyled cat-list">
                                <li><a href="<?php echo baseUrl(); ?>products.php?id=1">DOMESTIC PRODUCTS</a> <i class="fa fa-angle-right"></i></li>
                                <li><a href="<?php echo baseUrl(); ?>industrial_products.php">INDUSTRIAL PRODUCTS</a> <i class="fa fa-angle-right"></i></li>
                                <li><a href="<?php echo baseUrl(); ?>products.php?id=3">LOCAL PRODUCTS</a> <i class="fa fa-angle-right"></i></li>
                            </ul>
                        </div><!--sidebar-box-->
                        <div class="sidebar-box margin40">
                            <h4>Latest News</h4>
                            <ul class="list-unstyled popular-post">
                                <li>
                                    <div class="popular-img">
                                        <a href="#"> <img src="img/img-7.jpg" class="img-responsive" alt=""></a>
                                    </div>
                                    <div class="popular-desc">
                                        <h5> <a href="#">News Title</a></h5>
                                        <h6>31st June 2016</h6>
                                    </div>
                                </li>
                                <li>
                                    <div class="popular-img">
                                        <a href="#"> <img src="img/img-8.jpg" class="img-responsive" alt=""></a>
                                    </div>
                                    <div class="popular-desc">
                                        <h5> <a href="#">News Title</a></h5>
                                        <h6>31st June 2016</h6>
                                    </div>
                                </li>
                                <li>
                                    <div class="popular-img">
                                        <a href="#"> <img src="img/img-9.jpg" class="img-responsive" alt=""></a>
                                    </div>
                                    <div class="popular-desc">
                                        <h5> <a href="#">News Title</a></h5>
                                        <h6>31st June 2016</h6>
                                    </div>
                                </li>
                            </ul>
                        </div><!--sidebar-box-->                        
                    </div>
                </div>
            </div>                       
            <?php include basePath('footer.php'); ?>
        </div>
        <?php include basePath('footer_script.php'); ?>
    </body>
</html>
