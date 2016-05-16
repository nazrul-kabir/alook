<?php
$arrayClient = array();
$sqlClient = "SELECT * FROM client WHERE client_image!='' AND client_status='Active' ORDER BY client_id DESC";
$resultClient = mysqli_query($con, $sqlClient);
if ($resultClient) {
    while ($objClient = mysqli_fetch_object($resultClient)) {
        $arrayClient[] = $objClient;
    }
}
?>
<?php if (count($arrayClient) > 0): ?>
    <section id="clients-carousel">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="center-heading">
                        <p class="lead">
                            Most business count their experience by years.
                            We measure by decades.
                        </p>
                    </div>
                </div>                   
            </div>
            <div class="row">
                <div class="col-md-12">
                    <ul id="clientslider">   
                        <?php foreach ($arrayClient AS $client): ?>
                            <li><a target="_blank" href="<?php echo $client->client_link; ?>">
                                    <img src="upload/client_image/<?php echo $client->client_image; ?>" alt="<?php echo $client->client_name; ?>">
                                </a>
                            </li>
                        <?php endforeach; ?>                    
                    </ul>
                </div>        
            </div>   
            <div class="col-md-12 text-center">
                <a href="<?php echo baseUrl('all_client.php'); ?>" class="btn border-theme btn-lg wow animated fadeInUp animated" style="visibility: visible; animation-name: fadeInUp;"><i class="fa fa-bars"></i> See all our clients</a>
            </div>
        </div>
    </section> 
<?php endif; ?>