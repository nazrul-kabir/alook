<?php
include '../../../config/config.php';
$product_title = '';
$product_status = '';
$product_details = '';
$product_image = '';
$product_type_id = '';
$product_category_id = '';
$product_updated_by = getSession('admin_id');
$product_id = '';
$flag = 0;
if (isset($_GET['id'])) {
    $product_id = $_GET['id'];
}

// get product category
$arrayProductCategory = array();
$sqlProductCategory = "SELECT * FROM product_category WHERE pc_status='Active'";
$resultProductCategory = mysqli_query($con, $sqlProductCategory);
if ($resultProductCategory) {
    while ($objProductCategory = mysqli_fetch_object($resultProductCategory)) {
        $arrayProductCategory[] = $objProductCategory;
    }
}
// get product type
$arrayProductType = array();
$sqlProductType = "SELECT * FROM product_type WHERE product_type_status='Active'";
$resultProductType = mysqli_query($con, $sqlProductType);
if ($resultProductType) {
    while ($objProductType = mysqli_fetch_object($resultProductType)) {
        $arrayProductType[] = $objProductType;
    }
}

// getting product image
$sqlImage = "SELECT product_image FROM product WHERE product_id= $product_id";
$resultImage = mysqli_query($con, $sqlImage);
if ($resultImage) {
    while ($ImageObj = mysqli_fetch_object($resultImage)) {
        $product_image = $ImageObj->product_image;
    }
} else {
    if (DEBUG) {
        $error = "resultImage error: " . mysqli_error($con);
    } else {
        $error = "resultImage query failed.";
    }
}
if (isset($_POST['product_title'])) {
    extract($_POST);

    $product_id = validateInput($product_id);
    $product_title = validateInput($product_title);
    $product_details = validateInput($product_details);
    $product_type_id = validateInput($product_type_id);
    $product_category_id = validateInput($product_category_id);
    $product_status = validateInput($product_status);

    // check product priority and exist
    $sql_check = "SELECT * FROM product WHERE product_title='$product_title' AND product_id NOT IN (" . $product_id . ")";
    $result_check = mysqli_query($con, $sql_check);
    $count = mysqli_num_rows($result_check);
    if ($count > 0) {
        $error = "Product already exists in record";
    } else {


        // Image upload code start
        if ($_FILES['product_image']['name']) { // Check if image file posted or not
            $targetDirectory = $config['IMAGE_UPLOAD_PATH'] . '/product_image/'; // Target directory where image will save or store
            $targetFile = '';
            $fileType = pathinfo(basename($_FILES['product_image']['name']), PATHINFO_EXTENSION); // File type such as .jpg, .png, .jpeg, .gif
            if ($fileType != 'jpg' && $fileType != 'png' && $fileType != 'jpeg' && $fileType != 'gif') { // Check file is in mentioned format or not
                $flag++;
                $error = 'Sorry, only JPG, JPEG, PNG & GIF files are allowed';
            } else {
                if ($_FILES['product_image']['size'] > (1024000)) { // Check file size. File size must be less than 1MB
                    $flag++;
                    $error = 'Image size is too large. Must be less than 1MB';
                } else {

                    $renameFile = "PDI" . date('YmdHis') . '.' . $fileType; // Rename the file name
                    $targetFile = $targetDirectory . $renameFile; // Target image file
                    move_uploaded_file($_FILES['product_image']['tmp_name'], $targetFile);
                    $flag = 0;
                }
            }
        }
        // Image upload code end

        if ($flag == 0) {
            $custom_array = '';
            $custom_array .= 'product_title = "' . $product_title . '"';
            if ($_FILES["product_image"]["tmp_name"] != '') {
                $custom_array .= ',product_image = "' . $renameFile . '"';
            }
            $custom_array .= ',product_details = "' . $product_details . '"';
            $custom_array .= ',product_type_id = "' . $product_type_id . '"';
            $custom_array .= ',product_category_id = "' . $product_category_id . '"';
            $custom_array .= ',product_status = "' . $product_status . '"';
            $custom_array .= ',product_updated_by = "' . $product_updated_by . '"';

            $sql = "UPDATE product SET $custom_array WHERE product_id = $product_id";
            $result = mysqli_query($con, $sql);
            if ($result) {
                $success = 'Product information updated successfully';
                $link = baseUrl() . "admin/view/product/list.php?success=" . base64_encode($success);
                redirect($link);
            } else {
                if (DEBUG) {
                    $error = 'result query failed for ' . mysqli_error($con);
                } else {
                    $error = 'Something went wrong';
                }
            }
        } else {
            $error = "Something went wrong. Please try again.";
        }
    }
}
// getting product data
$sqlData = "SELECT * FROM product WHERE product_id = $product_id";
$resultData = mysqli_query($con, $sqlData);
if ($resultData) {
    $obj = mysqli_fetch_object($resultData);
    $product_title = $obj->product_title;
    $product_status = $obj->product_status;
    $product_details = $obj->product_details;
    $product_type_id = $obj->product_type_id;
    $product_category_id = $obj->product_category_id;
} else {
    $error = 'Incorrect parameter given';
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Edit Product</title>
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
                    <h1>Edit Product</h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-laptop"></i>&nbsp;Product Settings</li>
                        <li class="active">Edit Product</li>
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
                                                <form method="POST" id="productForm" action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" enctype="multipart/form-data">
                                                    <div class="modal-body">
                                                        <input type="hidden" id="product_id" name="product_id" value="<?php echo $product_id; ?>" />
                                                        <div class="form-group">
                                                            <label for="product_category_id">Product Category &nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <select id="product_category_id" name="product_category_id" class="form-control">
                                                                <option value="0">Select Product Category</option>
                                                                <?php if (count($arrayProductCategory) > 0): ?>
                                                                    <?php foreach ($arrayProductCategory AS $productCategory): ?>
                                                                        <option value="<?php echo $productCategory->pc_id; ?>"
                                                                        <?php
                                                                        if ($productCategory->pc_id == $product_category_id) {
                                                                            echo "selected=selected";
                                                                        }
                                                                        ?>><?php echo $productCategory->pc_name; ?>
                                                                        </option>
                                                                    <?php endforeach; ?>
                                                                <?php endif; ?>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="product_title">Product Title &nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <input type="text" class="form-control" id="product_title" name="product_title" value="<?php echo $product_title; ?>" required="required" />
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="product_image">Product Image&nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <input type="file" name="product_image" id="product_image" />
                                                        </div>
                                                        <div>
                                                            <img src="../../../upload/product_image/<?php echo $product_image; ?>" id="show_image" style="height: 70px; width: 80px;" />
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="product_details">Product Details</label>
                                                            <textarea rows="3" cols="30" class="form-control" id="product_details" name="product_details"><?php echo html_entity_decode($product_details, ENT_QUOTES | ENT_IGNORE, "UTF-8"); ?></textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="product_type_id">Product Type&nbsp;&nbsp;<span style="color:red;">*</label>
                                                            <select id="product_type_id" name="product_type_id" class="form-control">
                                                                <option value="0">Select Type</option>
                                                                <?php if (count($arrayProductType) > 0): ?>
                                                                    <?php foreach ($arrayProductType AS $productType): ?>
                                                                        <option value="<?php echo $productType->product_type_id; ?>"
                                                                        <?php
                                                                        if ($productType->product_type_id == $product_type_id) {
                                                                            echo "selected";
                                                                        }
                                                                        ?>><?php echo $productType->product_type_name; ?>
                                                                        </option>
                                                                    <?php endforeach; ?>
                                                                <?php endif; ?>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="product_status">Product Status&nbsp;&nbsp;<span style="color:red;">*</label>
                                                            <select id="product_status" name="product_status" class="form-control" required="required" />
                                                            <option value="0">Select Status</option>
                                                            <option value="Active"
                                                            <?php
                                                            if ($product_status == 'Active') {
                                                                echo "selected";
                                                            }
                                                            ?>>Active
                                                            </option>
                                                            <option value="Inactive"<?php
                                                            if ($product_status == 'Inactive') {
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
            $("#productActive").addClass("active");
            $("#productActive").parent().parent().addClass("treeview active");
            $("#productActive").parent().addClass("in");
        </script>
        <script>
            $(document).ready(function () {
                $("#product_details").kendoEditor({
                    tools: [
                        "bold", "italic", "underline", "strikethrough", "justifyLeft", "justifyCenter", "justifyRight", "justifyFull",
                        "insertUnorderedList", "insertOrderedList", "indent", "outdent", "createLink", "unlink", "insertImage",
                        "insertFile", "subscript", "superscript", "createTable", "addRowAbove", "addRowBelow", "addColumnLeft",
                        "addColumnRight", "deleteRow", "deleteColumn", "viewHtml", "formatting", "cleanFormatting",
                        "fontName", "fontSize", "foreColor", "backColor"
                    ]
                });
            });
        </script>
        <?php include basePath('admin/footer_script.php'); ?>

        <script>
            $(document).ready(function () {
                $("#btnSave").click(function () {
                    var product_category_id = $("#product_category_id option:selected").val();
                    var product_title = $("#product_title").val();
                    var product_type_id = $("#product_type_id option:selected").val();
                    var product_status = $("#product_status option:selected").val();                   
                    var status = 0;
                    if (product_category_id == '0') {
                        status++;
                        $("#errorShow").show();
                        $("#product_category_id").css({
                            "border": "1px solid red"
                        });
                    }
                    if (product_title == '') {
                        status++;
                        $("#errorShow").show();
                        $("#product_title").css({
                            "border": "1px solid red"
                        });
                    }
                    if (product_type_id == '0') {
                        status++;
                        $("#errorShow").show();
                        $("#product_type_id").css({
                            "border": "1px solid red"
                        });
                    }
                    if (product_status == '0') {
                        status++;
                        $("#errorShow").show();
                        $("#product_status").css({
                            "border": "1px solid red"
                        });
                    }
                    if (status == 0) {
                        $("#errorShow").hide();
                        $("#productForm").submit();
                    }
                });
            });
        </script>
    </body>
</html>