<?php
include './config/config.php';
$arrayCompleted = array();
$sqlCompleted = "SELECT * FROM project WHERE project_status='Active' AND project_type='Completed'";
$resultCompleted = mysqli_query($con, $sqlCompleted);
if ($resultCompleted) {
    while ($objCompleted = mysqli_fetch_object($resultCompleted)) {
        $arrayCompleted[] = $objCompleted;
    }
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Projects | Projects Completed</title>
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

                #no-more-tables tr { border: 1px solid #ccc; }

                #no-more-tables td { 
                    border: none;
                    border-bottom: 1px solid #eee; 
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
                            <h4>PROJECT COMPLETED</h4>
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
                        
                        <?php if (count($arrayCompleted) > 0): ?>
                            <div id="no-more-tables">
                                <table class="col-md-12 table-bordered table-striped table-condensed cf">
                                    <thead class="cf">
                                        <tr>
                                            <th>Sl. No</th>
                                            <th>Name of the job / Project with location</th>
                                            <th>Short particulars of the project in terms of capacity & type</th>
                                            <th>Date of commencement</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $count = 1; ?>
                                        <?php foreach ($arrayCompleted AS $completed): ?>
                                            <tr>
                                                <td data-title="Sl. No"><?php echo $count; ?></td>
                                                <td data-title="Name of the job"><?php echo $completed->project_name; ?></td>
                                                <td data-title="Short particulars"><?php echo $completed->project_details; ?></td>
                                                <td data-title="Date"><?php echo $completed->project_date; ?></td>
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
