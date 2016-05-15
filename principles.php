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
        <style>
            p{
                text-align: justify;
            }
        </style>
    </head>
    <body id="boxed">
        <div class="boxed-wrapper">
            <?php include basePath('header.php'); ?>       
            <div class="breadcrumb-wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4>GUIDING PRINCIPLES</h4>
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
                <div class="divide80"></div>
                <div class="row">
                    <div class="col-md-4 margin20">
                        <h3 class="heading">Our Vision</h3>
                        <p>To make the environment more human friendly & user acceptable at an optimum cost</p>
                    </div>
                    <div class="col-md-4 margin20">
                        <h3 class="heading">Our Mission</h3>

                        <p>To be leaders in the developing the art and science of HVAC/R within the urban society of Bangladesh</p>
                    </div>
                    <div class="col-md-4 margin20">
                        <h3>&nbsp;</h3>
                        <p class="dropcap">Most Business Count Their Experience By Years. We Measure Ours By Decades.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 margin20">
                        <h3 class="heading">Our Objectives</h3>
                        <p>
                           Earning a revenue by making people comfortable by
                        </p>
                        <ul class="list-unstyled highlight-list">
                            <li style="line-height: 25px;"><i class="fa fa-check"></i> Supplying, Installing, Commissioning state-of-the art Heating, Ventilating, Air-conditioning & Refrigerating Equipment</li>
                            <li style="line-height: 25px;"><i class="fa fa-check"></i> Importing HVAC equipment</li>
                            <li style="line-height: 25px;"><i class="fa fa-check"></i> Manufacturing water heaters & accessories</li>
                            <li style="line-height: 25px;"><i class="fa fa-check"></i> Uninterrupted after-sales-service and maintenance to the clients</li>
                            <li style="line-height: 25px;"><i class="fa fa-check"></i> Continuous contribution to business development of the country</li>
                        </ul>
                    </div>
                    <div class="col-md-8 margin20">
                        <h3 class="heading">ARCL Profile</h3>
                        <p style="text-align: justify">
                            Self-taught Engineer and Entrepreneur Mr. Abdul Khaleque, first opened his Air-conditioning, Electrical & Refrigeration service center under the banner ‘Alook Sajja’ in 1972. Leaving no stone unturned, Mr. Abdul Khaleque strived hard to turn a small time business into the Million Dollar company it is today. Forty-four years in service and counting, Alook Refrigeration Co. Ltd is a symbol of success. Backed by quality engineering and efficient management, ARCL provides services tailored to its customer’s needs. ARCL deploys top quality products with the help of top class Engineers. Here at ARCL not only there is no room for error, we believe in perfection. ARCL is the Exclusive Distributor of Dunham-Bush’s premium line of HVAC/R products & at the same time manufactures its own line products locally. Today ARCL is a pioneer in HVAC/R, providing world class one-stop solution in refrigeration. 
                        </p>
                    </div>
                </div>
            </div>                       
           <?php include basePath('news_letter.php') ?>
            <?php include basePath('footer.php'); ?>
        </div>
        <?php include basePath('footer_script.php'); ?>
    </body>
</html>
