<?php
include '../../../config/config.php';
$equipment_id = '';
$equipment_name = '';
$equipment_status = '';
$equipment_details = '';
$equipment_qty = '';
$equipment_updated_by = getSession('admin_id');
if (isset($_GET['id'])) {
    $equipment_id = $_GET['id'];
}
$flag = 0;
if (isset($_POST['equipment_name'])) {
    extract($_POST);

    $equipment_id = validateInput($equipment_id);
    $equipment_name = validateInput($equipment_name);
    $equipment_status = validateInput($equipment_status);
    $equipment_details = validateInput($equipment_details);
    $equipment_qty = validateInput($equipment_qty);

    // check exists
    $sql_check = "SELECT * FROM equipment WHERE equipment_name='$equipment_name' AND equipment_id NOT IN (" . $equipment_id . ")";
    $result_check = mysqli_query($con, $sql_check);
    $count = mysqli_num_rows($result_check);
    if ($count > 0) {
        $flag++;
        $error = "Equipment name already exists in record";
    } else {

        if ($flag == 0) {
            $custom_array = '';
            $custom_array .= 'equipment_name = "' . $equipment_name . '"';
            $custom_array .= ',equipment_status = "' . $equipment_status . '"';
            $custom_array .= ',equipment_details = "' . $equipment_details . '"';
            $custom_array .= ',equipment_qty = "' . $equipment_qty . '"';
            $custom_array .= ',equipment_updated_by = "' . $equipment_updated_by . '"';

            $sql = "UPDATE equipment SET $custom_array WHERE equipment_id = $equipment_id";
            $result = mysqli_query($con, $sql);
            if ($result) {
                $success = 'Equipment information updated successfully';
                $link = baseUrl() . "admin/view/equipment/list.php?success=" . base64_encode($success);
                redirect($link);
            } else {
                if (DEBUG) {
                    $error = 'result query failed for ' . mysqli_error($con);
                } else {
                    $error = 'Something went wrong';
                }
            }
        } else {
            $error = 'Something went wrong. Please try again.';
        }
    }
}
// getting banner data
$sqlData = "SELECT * FROM equipment WHERE equipment_id = $equipment_id";
$resultData = mysqli_query($con, $sqlData);
if ($resultData) {
    $obj = mysqli_fetch_object($resultData);
    $equipment_name = $obj->equipment_name;
    $equipment_status = $obj->equipment_status;
    $equipment_details = $obj->equipment_details;
    $equipment_qty = $obj->equipment_qty;
} else {
    
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Edit Equipment</title>
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
                    <h1>Edit Equipment</h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-laptop"></i>&nbsp;Equipment Settings</li>
                        <li class="active">Edit Equipment</li>
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
                                                <form method="POST" id="equipmentForm" action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>">
                                                    <div class="modal-body">
                                                        <input type="hidden" name="equipment_id" id="equipment_id" value="<?php echo $equipment_id; ?>" />
                                                        <div class="form-group">
                                                            <label for="equipment_name">Equipment Name &nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <input type="text" class="form-control" id="equipment_name" name="equipment_name" value="<?php echo $equipment_name; ?>" />
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="equipment_details">Short Details</label>
                                                            <textarea class="form-control" id="equipment_details" name="equipment_details" rows="5" style="overflow: auto;resize: vertical;"><?php echo $equipment_details; ?></textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="equipment_qty">Equipment Quantity &nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <input type="text" class="form-control" id="equipment_qty" name="equipment_qty" value="<?php echo $equipment_qty; ?>" />
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="equipment_status">Equipment Status&nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <select id="equipment_status" name="equipment_status" class="form-control" >
                                                                <option value="0">Select Status</option>
                                                                <option value="Active"
                                                                <?php
                                                                if ($equipment_status == 'Active') {
                                                                    echo "selected";
                                                                }
                                                                ?>>Active
                                                                </option>
                                                                <option value="Inactive"<?php
                                                                if ($equipment_status == 'Inactive') {
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
            $("#equipmentActive").addClass("active");
            $("#equipmentActive").parent().parent().addClass("treeview active");
            $("#equipmentActive").parent().addClass("in");
        </script>
        <?php include basePath('admin/footer_script.php'); ?>

        <script>
            $(document).ready(function () {
                $("#btnSave").click(function () {
                    var equipment_name = $("#equipment_name").val();
                    var equipment_qty = $("#equipment_qty").val();
                    var equipment_status = $("#equipment_status option:selected").val();
                    var status = 0;
                    if (equipment_name == '') {
                        status++;
                        $("#errorShow").show();
                        $("#equipment_name").css({
                            "border": "1px solid red"
                        });
                    }

                    if (equipment_qty == '') {
                        status++;
                        $("#errorShow").show();
                        $("#equipment_qty").css({
                            "border": "1px solid red"
                        });
                    }
                    if (equipment_status == '0') {
                        status++;
                        $("#errorShow").show();
                        $("#equipment_status").css({
                            "border": "1px solid red"
                        });
                    }

                    $('#equipment_name').keyup(function () {
                        $("#equipment_name").css({
                            "border": "1px solid #d2d6de"
                        });
                    });
                    $('#equipment_qty').keyup(function () {
                        $("#equipment_qty").css({
                            "border": "1px solid #d2d6de"
                        });
                    });
                    $('#equipment_status').keyup(function () {
                        $("#equipment_status").css({
                            "border": "1px solid #d2d6de"
                        });
                    });

                    if (status == 0) {
                        $("#errorShow").hide();
                        $("#equipmentForm").submit();
                    }
                });
            });
        </script>
    </body>
</html>