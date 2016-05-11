<?php
include '../../../config/config.php';
$client_name = '';
$client_link = '';
$client_status = '';
$client_image = '';
$client_updated_by = getSession('admin_id');
$client_id = '';
$renameFile = '';

if (isset($_GET['id'])) {
    $client_id = $_GET['id'];
}

if (isset($_POST['client_name'])) {
    extract($_POST);

    $client_name = validateInput($client_name);
    $client_status = validateInput($client_status);
    $client_link = validateInput($client_link);

    // check clients priority and exist
    $sql_check = "SELECT * FROM client WHERE client_name='$client_name' AND client_id NOT IN (" . $client_id . ")";
    $result_check = mysqli_query($con, $sql_check);
    $count = mysqli_num_rows($result_check);
    if ($count > 0) {
        $error = "Clients already exists in record";
    } else {
        // Image upload code start
        if ($_FILES['client_image']['name']) { // Check if image file posted or not
            $targetDirectory = $config['IMAGE_UPLOAD_PATH'] . '/client_image/'; // Target directory where image will save or store
            $targetFile = '';
            $fileType = pathinfo(basename($_FILES['client_image']['name']), PATHINFO_EXTENSION); // File type such as .jpg, .png, .jpeg, .gif
            if ($fileType != 'jpg' && $fileType != 'png' && $fileType != 'jpeg' && $fileType != 'gif') { // Check file is in mentioned format or not
                $flag++;
                $error = 'Sorry, only JPG, JPEG, PNG & GIF files are allowed';
            } else {
                if ($_FILES['client_image']['size'] > (1024000)) { // Check file size. File size must be less than 1MB
                    $flag++;
                    $error = 'Client image size is too large. Must be less than 1MB';
                } else {
                    $renameFile = '';
                    $renameFile = "CI" . date('YmdHis') . '.' . $fileType; // Rename the file name
                    $targetFile = $targetDirectory . $renameFile; // Target image file
                    move_uploaded_file($_FILES['client_image']['tmp_name'], $targetFile);
                    $flag = 0;
                }
            }
        }
        // Image upload code end
        $custom_array = '';
        $custom_array .= 'client_name = "' . $client_name . '"';
        if ($_FILES["client_image"]["tmp_name"] != '') {
            $custom_array .= ',client_image = "' . $renameFile . '"';
        }
        $custom_array .= ',client_status = "' . $client_status . '"';
        $custom_array .= ',client_link = "' . $client_link . '"';
        $custom_array .= ',client_updated_by = "' . $client_updated_by . '"';

        $sql = "UPDATE client SET $custom_array WHERE client_id = $client_id";
        $result = mysqli_query($con, $sql);
        if ($result) {
            $success = 'Clients information updated successfully';
            $link = baseUrl() . "admin/view/client/list.php?success=" . base64_encode($success);
            redirect($link);
        } else {
            if (DEBUG) {
                $error = 'result query failed for ' . mysqli_error($con);
            } else {
                $error = 'Something went wrong';
            }
        }
    }
}
$sqlImage = "SELECT client_image FROM client WHERE client_id= $client_id";
$resultImage = mysqli_query($con, $sqlImage);
if ($resultImage) {
    while ($ImageObj = mysqli_fetch_object($resultImage)) {
        $client_image = $ImageObj->client_image;
    }
} else {
    if (DEBUG) {
        $error = "resultImage error: " . mysqli_error($con);
    } else {
        $error = "resultImage query failed.";
    }
}
// getting clients data
$sqlData = "SELECT * FROM client WHERE client_id = $client_id";
$resultData = mysqli_query($con, $sqlData);
if ($resultData) {
    $obj = mysqli_fetch_object($resultData);
    $client_name = $obj->client_name;
    $client_status = $obj->client_status;
    $client_link = $obj->client_link;
} else {
    
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Edit Client</title>
        <?php include basePath('admin/header_script.php'); ?>
        <style>
            .example-modal .modal {
                position: relative;
                top: auto;
                bottom: auto;
                right: auto;
                left: auto;
                display: block;
                z-index: 1;
            }
            .example-modal .modal {
                background: transparent!important;
            }
        </style>
    </head>
    <body class="skin-blue">
        <div class="wrapper">
            <?php include basePath('admin/header.php'); ?>

            <aside class="main-sidebar">
                <?php include basePath('admin/site_menu.php'); ?>
            </aside>
            <div class="content-wrapper">
                <section class="content-header">
                    <h1>Edit Clients</h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-laptop"></i>&nbsp;General Settings</li>
                        <li class="active">Edit Clients</li>
                    </ol>
                </section>
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-primary">
                                <div class="example-modal">
                                    <div class="modal">
                                        <div class="modal-dialog">
                                            <?php include basePath('admin/message.php'); ?>
                                            <div class="modal-content">
                                                <form method="POST" id="clientsForm" action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" enctype="multipart/form-data">
                                                    <div class="modal-body">
                                                        <input type="hidden" id="client_id" name="client_id" value="<?php echo $client_id; ?>" />
                                                        <div class="form-group">
                                                            <label for="client_name">Client Name &nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <input type="text" class="form-control" id="client_name" name="client_name" value="<?php echo $client_name; ?>"/>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="client_link">Client Link &nbsp;&nbsp;<span style="color: green;">example: http://www.abc.com</span></label>
                                                            <input type="text" class="form-control" id="client_link" name="client_link" value="<?php echo $client_link; ?>"/>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="client_image">Client Image</label>
                                                            <input type="file" name="client_image" id="client_image" />
                                                        </div>
                                                        <div>
                                                            <?php if ($client_image != ''): ?>
                                                                <img src="<?php echo baseUrl(); ?>upload/client_image/<?php echo $client_image; ?>" id="show_image" style="height: 70px; width: 80px;" />
                                                            <?php else: ?>
                                                                <img src="<?php echo baseUrl(); ?>upload/no_image.jpg" style="height: 70px; width: 80px;" />
                                                            <?php endif; ?>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="client_status">Client Status&nbsp;&nbsp;<span style="color:red;">*</label>
                                                            <select id="client_status" name="client_status" class="form-control">
                                                                <option value="0">Select Status</option>
                                                                <option value="Active"
                                                                <?php
                                                                if ($client_status == 'Active') {
                                                                    echo "selected";
                                                                }
                                                                ?>>Active
                                                                </option>
                                                                <option value="Inactive"<?php
                                                                if ($client_status == 'Inactive') {
                                                                    echo "selected";
                                                                }
                                                                ?>>Inactive
                                                                </option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <p id="errorShow" style="display: none;background-color: #ea2e49;color: white; padding: 4px 4px 2px 4px;font-size: 12px;position: relative;">
                                                                Please fill up required (*) fields
                                                            </p>
                                                        </div>
                                                    </div>

                                                    <div class="modal-footer">
                                                        <button type="button" id="btnSave" name="btnSave" class="btn btn-primary"><i class="fa fa-edit"></i> Update</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <?php include basePath('admin/footer.php'); ?>
        </div>
        <script type="text/javascript">
            $("#clientsActive").addClass("active");
            $("#clientsActive").parent().parent().addClass("treeview active");
            $("#clientsActive").parent().addClass("in");
        </script>
        <?php include basePath('admin/footer_script.php'); ?>

        <script>
            $(document).ready(function () {
                $("#btnSave").click(function () {

                    var client_name = $("#client_name").val();
                    var client_status = $("#client_status option:selected").val();
                    var status = 0;
                    if (client_name == '') {
                        status++;
                        $("#errorShow").show();
                        $("#client_name").css({
                            "border": "1px solid red"
                        });
                    }
                    if (client_status == '0') {
                        status++;
                        $("#errorShow").show();
                        $("#client_status").css({
                            "border": "1px solid red"
                        });
                    }
                    if (status == 0) {
                        $("#errorShow").hide();
                        $("#clientsForm").submit();
                    }
                });
            });
        </script>
    </body>
</html>