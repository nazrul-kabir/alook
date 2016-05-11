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
                        <h2 style="color: black">Trusted Nationwide</h2>
                        <span class="center-line"></span>
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
        </div>
    </section> 
<?php endif; ?>