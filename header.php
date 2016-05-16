<?php
$array = array();
$sql = "SELECT * FROM product_type WHERE product_type_status='Active'";
$result = mysqli_query($con, $sql);
if ($result) {
    while ($obj = mysqli_fetch_object($result)) {
        $array[] = $obj;
    }
}
?>
<div class="top-bar-light">            
    <div class="container">
        <div class="row">
            <div class="col-sm-3 hidden-xs hidden-sm">
                <div class="top-bar-socials">
                    <a href="#" class="social-icon-sm si-gray si-gray-round si-facebook">
                        <i class="fa fa-facebook"></i>
                        <i class="fa fa-facebook"></i>
                    </a>
                    <a href="#" class="social-icon-sm si-gray si-gray-round si-twitter">
                        <i class="fa fa-twitter"></i>
                        <i class="fa fa-twitter"></i>
                    </a>
                    <a href="#" class="social-icon-sm si-gray si-gray-round si-g-plus">
                        <i class="fa fa-google-plus"></i>
                        <i class="fa fa-google-plus"></i>
                    </a>
                    <a href="#" class="social-icon-sm si-gray si-gray-round si-g-plus">
                        <i class="fa fa-youtube"></i>
                        <i class="fa fa-youtube"></i>
                    </a>                    
                </div>

            </div>
            <div class="col-sm-5">
                <marquee scrolldelay="150" style="margin-top: 5px;font-weight: bold;color: #10218B;">
                    For Anything in Air-Conditioning and Refrigeration (HVAC &amp; R)
                </marquee>
            </div>
            <div class="col-sm-4 text-right">
                <ul class="list-inline top-dark-right">                      
                    <li class="hidden-sm hidden-xs"><i class="fa fa-envelope"></i> alookref@gmail.com</li>
                    <li class="hidden-sm hidden-xs"><i class="fa fa-phone"></i> (+8802) 9830760</li>
                    <li><a class="topbar-icons" href="#"><span><i class="fa fa-search top-search"></i></span></a></li>
                </ul>
                <div class="search">
                    <form role="form">
                        <input type="text" class="form-control" autocomplete="off" placeholder="Write something and press enter">
                        <span class="search-close"><i class="fa fa-times"></i></span>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="navbar navbar-default navbar-static-top yamm sticky" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php"><img src="img/logo.png" alt="ALOOL REFRIJEGERATION COMPANY LIMITED" style=""></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.php">HOME</a></li>
                <li class="dropdown ">
                    <a href="#" class="dropdown-toggle " data-toggle="dropdown">ABOUT US <i class="fa fa-angle-down"></i></a>
                    <ul class="dropdown-menu multi-level" role="menu">
                        <li><a tabindex="-1" href="profile.php">ALOOK'S PROFILE</a></li>
                        <li><a tabindex="-1" href="dunham_profile.php">DUNHAM-BUSH PROFILE</a></li>
                        <li><a tabindex="-1" href="organogram.php">ORGANOGRAM</a></li>
                        <li><a tabindex="-1" href="dr.php">MESSAGE FROM ED</a></li>
                        <li><a tabindex="-1" href="mdm.php">MESSAGE FROM MD</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle " data-toggle="dropdown">PRODUCTS <i class="fa fa-angle-down"></i></a>
                    <ul class="dropdown-menu multi-level" role="menu">
                        <?php if (count($array) > 0): ?>
                            <?php foreach ($array AS $productType): ?>
                        <li><a tabindex="-1" href="<?php echo baseUrl(); ?>products.php?id=<?php echo $productType->product_type_id; ?>"><?php echo $productType->product_type_name; ?></a></li>
                            <?php endforeach; ?>
                        <?php endif; ?>                                   
                    </ul>
                </li>
                <li class="dropdown ">
                    <a href="#" class="dropdown-toggle " data-toggle="dropdown">PROJECTS <i class="fa fa-angle-down"></i></a>
                    <ul class="dropdown-menu multi-level" role="menu">
                        <li><a tabindex="-1" href="pc.php">PROJECTS COMPLETED</a></li>
                        <li><a tabindex="-1" href="pih.php">PROJECTS IN HAND</a></li>                                    
                        <li><a tabindex="-1" href="pum.php">PROJECTS UNDER MAINTAINANCE-CONTRACT</a></li>                                    
                    </ul>
                </li>
                <li><a href="equipment.php">EQUIPMENT</a></li>
                <li><a href="#">GALLERY</a></li>
                <li><a href="#">CAREER</a></li>
                <li><a href="contact.php">CONTACT US</a></li>
            </ul>
        </div>
    </div>
</div>