<?php
$arrayBanner = array();
$sqlbanner = "SELECT * FROM banner WHERE banner_status='Active' ORDER BY banner_id DESC";
$resultBanner = mysqli_query($con, $sqlbanner);
if ($resultBanner) {
    while ($objBanner = mysqli_fetch_object($resultBanner)) {
        $arrayBanner[] = $objBanner;
    }
} else {
    
}
?>
<?php if (count($arrayBanner) > 0): ?>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <?php $countBanner = 0; ?>

        <ol class="carousel-indicators">
            <?php foreach ($arrayBanner AS $banner): ?>
                <li data-target="#myCarousel" data-slide-to="<?php echo $countBanner; ?>" <?php if ($countBanner == 0): ?> class="active" <?php endif; ?>></li>
                <?php $countBanner++; ?>
            <?php endforeach; ?>
        </ol>

        <?php $countDiv = 0; ?>
        <div class="carousel-inner" role="listbox">
            <?php foreach ($arrayBanner AS $banner): ?>
                <div class='item <?php if ($countDiv == 0): ?> active <?php endif; ?>'>
                    <img src="<?php echo $config['IMAGE_UPLOAD_URL'] . '/banner_image/' . $banner->banner_image; ?>" alt="<?php echo $banner->banner_title; ?>">
                    <div class="carousel-caption hidden-sm hidden-xs">
                        <h3 style="color: white;"><?php echo $banner->banner_title; ?></h3>
                        <p style="color: white;"><?php echo $banner->banner_details; ?></p>
                    </div>
                </div>
                <?php $countDiv++; ?>
            <?php endforeach; ?>
        </div>
    </div>
<?php endif; ?>