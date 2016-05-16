<?php
include './config/config.php';
$arrayHand = array();
$sqlHand = "SELECT * FROM project WHERE project_status='Active' AND project_type='Inhand'";
$resultHand = mysqli_query($con, $sqlHand);
if ($resultHand) {
    while ($objHand = mysqli_fetch_object($resultHand)) {
        $arrayHand[] = $objHand;
    }
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Projects | Projects In Hand</title>
        <?php include basePath('header_script.php'); ?>

        <style>
            @media only screen and (max-width: 800px) {
                #no-more-tables table, 
                #no-more-tables thead, 
                #no-more-tables tbody, 
                #no-more-tables th, 
                #no-more-tables td, 
                #no-more-tables tr { 
                    display: block; 
                }
                #no-more-tables thead tr { 
                    position: absolute;
                    top: -9999px;
                    left: -9999px;
                }

                #no-more-tables tr { border: 1px solid #10218B; }

                #no-more-tables td { 
                    border: none;
                    border-bottom: 1px solid #10218B; 
                    position: relative;
                    padding-left: 50%; 
                    white-space: normal;
                    text-align:left;
                }

                #no-more-tables td:before { 
                    position: absolute;
                    top: 6px;
                    left: 6px;
                    width: 45%; 
                    padding-right: 10px; 
                    white-space: nowrap;
                    text-align:left;
                    font-weight: bold;
                }
                #no-more-tables td:before { 
                    content: attr(data-title); 
                }
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
                            <h4>PROJECT IN HAND</h4>
                        </div>
                        <div class="col-sm-6 hidden-xs text-right">
                            <ol class="breadcrumb">
                                <li><a href="index.php">HOME</a></li>
                                <li>PROJECTS</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="divide20"></div>
                <div class="row">
                    <div class="col-md-12">
                        <?php if (count($arrayHand) > 0): ?>
                            <div id="no-more-tables">
                                <table class="col-md-12 table-bordered table-striped table-condensed">
                                    <thead class="" style="background-color: #06187c;color: white">
                                        <tr>
                                            <th style="width: 10%;">Sl. No</th>
                                            <th style="width: 40%;">Name of the job / Project with location</th>
                                            <th style="width: 30%;">Short particulars of the project in terms of capacity & type</th>
                                            <th style="width: 10%;">Date of commencement</th>
                                            <th class="" style="width: 10%;">Progress %</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $count = 1; ?>
                                        <?php foreach ($arrayHand AS $inhand): ?>
                                            <tr>
                                                <td data-title="Sl. No"><?php echo $count; ?></td>
                                                <td data-title="Name of job"><?php echo $inhand->project_name; ?></td>
                                                <td data-title="Short Desc."><?php echo $inhand->project_details; ?></td>
                                                <td data-title="Date"><?php echo $inhand->project_date; ?></td>
                                                <td data-title="Progress %" class="numeric"><?php echo $inhand->project_progress; ?>%</td>
                                            </tr>
                                            <?php $count++; ?>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        <?php else: ?>
                            <p style="text-align: center;">No data found in record.</p>
                        <?php endif; ?>
                    </div>
                </div>               
            </div>        
            <div style="height: 20px;"></div>
            <?php include basePath('news_letter.php') ?>
            <?php include basePath('footer.php'); ?>
        </div>
        <?php include basePath('footer_script.php'); ?>
    </body>
</html>
