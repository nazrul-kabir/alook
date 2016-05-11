<?php
include '../../../config/config.php';
$pc_name = '';
$pc_status = '';
$pc_created_on = date('Y-m-d H:i:s');
$pc_created_by = getSession('admin_id');
$flag = 0;
if (isset($_POST['pc_name'])) {
    extract($_POST);
    
    
    $pc_name = validateInput($pc_name);
    $pc_status = validateInput($pc_status);

    // check banner exists
    $sql_check = "SELECT * FROM product_category WHERE pc_name = '$pc_name'";
    $result_check = mysqli_query($con, $sql_check);
    $count = mysqli_num_rows($result_check);
    if ($count > 0) {
        $flag++;
        $error = "Product category name already exists in record";
    } else {

        if ($flag == 0) {
            $custom_array = '';
            $custom_array .= 'pc_name = "' . $pc_name . '"';
            $custom_array .= ',pc_status = "' . $pc_status . '"';
            $custom_array .= ',pc_created_on = "' . $pc_created_on . '"';
            $custom_array .= ',pc_created_by = "' . $pc_created_by . '"';

            $sql = "INSERT INTO product_category SET $custom_array";
            $result = mysqli_query($con, $sql);
            if ($result) {
                $success = 'Product category saved successfully';
                $link = baseUrl() . "admin/view/product_category/list.php?success=" . base64_encode($success);
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
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Add Product Category</title>
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
                    <h1>Add Product Category</h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-laptop"></i>&nbsp;Product Settings</li>
                        <li class="active">Add Product Category</li>
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
                                                <form method="POST" id="pcForm" action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>">
                                                    <div class="modal-body">
                                                        <div class="form-group">
                                                            <label for="pc_name">Product Category Name &nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <input type="text" class="form-control" id="pc_name" name="pc_name" value="<?php echo $pc_name; ?>" />
                                                        </div>
                                                       
                                                        <div class="form-group">
                                                            <label for="pc_status">Product Category Status&nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <select id="pc_status" name="pc_status" class="form-control" >
                                                                <option value="0">Select Status</option>
                                                                <option value="Active"
                                                                <?php
                                                                if ($pc_status == 'Active') {
                                                                    echo "selected";
                                                                }
                                                                ?>>Active
                                                                </option>
                                                                <option value="Inactive"<?php
                                                                if ($pc_status == 'Inactive') {
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
                                                        <button type="button" id="btnSave" name="btnSave" class="btn btn-primary"><i class="fa fa-check-circle"></i> Save</button>
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
            $("#proCategoryActive").addClass("active");
            $("#proCategoryActive").parent().parent().addClass("treeview active");
            $("#proCategoryActive").parent().addClass("in");
        </script>
        <?php include basePath('admin/footer_script.php'); ?>

        <script>
            $(document).ready(function () {
                $("#btnSave").click(function () {
                    var pc_name = $("#pc_name").val();
                    var pc_status = $("#pc_status option:selected").val();
                    var status = 0;
                    if (pc_name == '') {
                        status++;
                        $("#errorShow").show();
                        $("#pc_name").css({
                            "border": "1px solid red"
                        });
                    }
                    
                    if (pc_status == '0') {
                        status++;
                        $("#errorShow").show();
                        $("#pc_status").css({
                            "border": "1px solid red"
                        });
                    }

                    $('#pc_name').keyup(function () {
                        $("#pc_name").css({
                            "border": "1px solid #d2d6de"
                        });
                    });
                    $('#pc_status').keyup(function () {
                        $("#pc_status").css({
                            "border": "1px solid #d2d6de"
                        });
                    });

                    if (status == 0) {
                        $("#errorShow").hide();
                        $("#pcForm").submit();
                    }
                });
            });
        </script>
    </body>
</html>