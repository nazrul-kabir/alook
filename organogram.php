<?php 
include './config/config.php';
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration Co. Ltd | About US</title>
        <?php include basePath('header_script.php'); ?>
    </head>
    <body id="boxed">
        <div class="boxed-wrapper">
             <?php include basePath('header.php'); ?> 
            <div class="breadcrumb-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4>ORGANOGRAM</h4>
                        </div>
                        <div class="col-sm-6 hidden-xs text-right">
                            <ol class="breadcrumb">
                                <li><a href="<?php echo baseUrl(); ?>index.php">HOME</a></li>
                                <li>ABOUT US</li>
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
                            <h2>ORGANOGRAM</h2>
                            <span class="center-line"></span>
                        </div>
                        <div>
                            <img src="<?php echo baseUrl(); ?>upload/ORGANOGRAM.png" class="img-responsive" alt="working">
                            <div class="item-img-overlay">
                                <span></span>
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
