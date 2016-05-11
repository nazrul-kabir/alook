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
                            <h2>Lorem ipsum dollor sit amet</h2>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lorem quam, adipiscing condimentum tristique vel, eleifend sed turpis. Pellentesque cursus arcu id magna euismod in elementum purus molestie
                            </p>
                            <p class="lead">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lorem quam, adipiscing condimentum tristique vel, eleifend sed turpis. Pellentesque cursus arcu id magna euismod in elementum purus molestie
                            </p>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lorem quam, adipiscing condimentum tristique vel, eleifend sed turpis. Pellentesque cursus arcu id magna euismod in elementum purus molestie
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lorem quam, adipiscing condimentum tristique vel, eleifend sed turpis. Pellentesque cursus arcu id magna euismod in elementum purus molestie

                            </p>
                            <p class="dropcap">
                                Sed iaculis condimentum nibh posuere gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit.<span class="colored-text"> Donec mollis tempor erat</span> ut rhoncus. Nullam tincidunt pretium lectus. Ut at lacinia nisl. Fusce eu risus non quam vehicula volutpat in eget elit. Vestibulum id nunc tellus. Integer sollicitudin nibh est, a volutpat mi interdum et. Ut felis justo, rutrum a ligula ut, lobortis facilisis metus. Etiam vel enim ante. Integer tempor, odio id cursus iaculis, est magna porta metus, vitae mollis est lacus id nibh. Integer pharetra purus eros, hendrerit semper orci elementum sit amet. Etiam suscipit turpis nunc. Vivamus a eleifend lorem. Donec vehicula sem non aliquam consequa
                            </p> 
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
                            <h4>Text widget</h4>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lorem quam, adipiscing condimentum tristique vel, eleifend sed turpis. Pellentesque cursus arcu id magna euismod in elementum purus molestie.
                            </p>
                        </div><!--sidebar-box-->
                        <div class="sidebar-box margin40">
                            <h4>Categories</h4>
                            <ul class="list-unstyled cat-list">
                                <li> <a href="#">Marketing</a> <i class="fa fa-angle-right"></i></li>
                                <li> <a href="#">Videos</a> <i class="fa fa-angle-right"></i></li>
                                <li> <a href="#">Sports</a> <i class="fa fa-angle-right"></i></li>
                                <li> <a href="#">Fashion</a> <i class="fa fa-angle-right"></i></li>
                                <li> <a href="#">Media</a> <i class="fa fa-angle-right"></i></li>
                                <li> <a href="#">Seo</a> <i class="fa fa-angle-right"></i></li>
                                <li> <a href="#">Marketing</a> <i class="fa fa-angle-right"></i></li>
                            </ul>
                        </div><!--sidebar-box-->
                        <div class="sidebar-box margin40">
                            <h4>Popular Post</h4>
                            <ul class="list-unstyled popular-post">
                                <li>
                                    <div class="popular-img">
                                        <a href="#"> <img src="img/img-7.jpg" class="img-responsive" alt=""></a>
                                    </div>
                                    <div class="popular-desc">
                                        <h5> <a href="#">blog post image</a></h5>
                                        <h6>31st july 2014</h6>
                                    </div>
                                </li>
                                <li>
                                    <div class="popular-img">
                                        <a href="#"> <img src="img/img-8.jpg" class="img-responsive" alt=""></a>
                                    </div>
                                    <div class="popular-desc">
                                        <h5> <a href="#">blog post image</a></h5>
                                        <h6>31st july 2014</h6>
                                    </div>
                                </li>
                                <li>
                                    <div class="popular-img">
                                        <a href="#"> <img src="img/img-9.jpg" class="img-responsive" alt=""></a>
                                    </div>
                                    <div class="popular-desc">
                                        <h5> <a href="#">blog post image</a></h5>
                                        <h6>31st july 2014</h6>
                                    </div>
                                </li>
                            </ul>
                        </div><!--sidebar-box-->
                        <div class="sidebar-box margin40">
                            <h4>Tag Cloud</h4>
                            <div class="tag-list">
                                <a href="#">Wordpress</a>
                                <a href="#">Design</a>
                                <a href="#">Graphics</a>
                                <a href="#">Seo</a>
                                <a href="#">Development</a>
                                <a href="#">Marketing</a>
                                <a href="#">fashion</a>
                                <a href="#">Media</a>
                                <a href="#">Photoshop</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>                       
            <?php include basePath('news_letter.php') ?>
            <?php include basePath('footer.php'); ?>
        </div>
        <?php include basePath('footer_script.php'); ?>
    </body>
</html>
