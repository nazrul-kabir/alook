<?php
include '../../../config/config.php';
$news_title = '';
$news_status = '';
$news_image = '';
$news_details = '';
$news_valid_till = '';
$news_id = '';
$news_updated_by = getSession('admin_id');
$flag = 0;
if (isset($_GET['id'])) {
    $news_id = $_GET['id'];
}
$sqlImage = "SELECT news_image FROM news WHERE news_id= $news_id";
$resultImage = mysqli_query($con, $sqlImage);
if ($resultImage) {
    while ($ImageObj = mysqli_fetch_object($resultImage)) {
        $news_image = $ImageObj->news_image;
    }
} else {
    if (DEBUG) {
        $error = "resultImage error: " . mysqli_error($con);
    } else {
        $error = "resultImage query failed.";
    }
}
if (isset($_POST['news_title'])) {
    extract($_POST);

    $news_id = validateInput($news_id);
    $news_title = validateInput($news_title);
    $news_details = validateInput($news_details);
    $news_status = validateInput($news_status);
    $news_valid_till = validateInput($news_valid_till);

    $sql_check = "SELECT * FROM news WHERE news_title='$news_title' AND news_id NOT IN (" . $news_id . ")";
    $result_check = mysqli_query($con, $sql_check);
    $count = mysqli_num_rows($result_check);
    if ($count >= 1) {
        $error = "News already exists in record";
    } else {

        // Image upload code start
        if ($_FILES['news_image']['name']) { // Check if image file posted or not
            $targetDirectory = $config['IMAGE_UPLOAD_PATH'] . '/news_image/'; // Target directory where image will save or store
            $targetFile = '';
            $fileType = pathinfo(basename($_FILES['news_image']['name']), PATHINFO_EXTENSION); // File type such as .jpg, .png, .jpeg, .gif
            if ($fileType != 'jpg' && $fileType != 'png' && $fileType != 'jpeg' && $fileType != 'gif') { // Check file is in mentioned format or not
                $flag++;
                $error = 'Sorry, only JPG, JPEG, PNG & GIF files are allowed';
            } else {
                if ($_FILES['news_image']['size'] > (1024000)) { // Check file size. File size must be less than 1MB
                    $flag++;
                    $error = 'Image size is too large. Must be less than 1MB';
                } else {
                    $renameFile = '';
                    $renameFile = "NI" . date('YmdHis') . '.' . $fileType; // Rename the file name
                    $targetFile = $targetDirectory . $renameFile; // Target image file
                    move_uploaded_file($_FILES['news_image']['tmp_name'], $targetFile);
                    $flag = 0;
                }
            }
        }
        // Image upload code end

        if ($flag == 0) {
            $updatearray = '';
            $updatearray .= 'news_title = "' . $news_title . '" ';
            $updatearray .= ',news_details = "' . $news_details . '" ';
            if ($_FILES["news_image"]["tmp_name"] != '') {
                $updatearray .= ',news_image = "' . $renameFile . '"';
            }
            $updatearray .= ',news_valid_till = "' . $news_valid_till . '" ';
            $updatearray .= ',news_status = "' . $news_status . '" ';
            $updatearray .= ',news_updated_by = "' . $news_updated_by . '" ';
            $sql_update = "UPDATE news SET $updatearray WHERE news_id = $news_id";
            $result_update = mysqli_query($con, $sql_update);

            if ($sql_update) {
                $success = "News information updated successfully";
                $link = baseUrl() . "admin/view/news/list.php?success=" . base64_encode($success);
                redirect($link);
            } else {
                if (DEBUG) {
                    $error = "result_update query failed for " . mysqli_error($con);
                } else {
                    $error = "Something went wrong";
                }
            }
        } else {
            $error = "Something went wrong. Please try again.";
        }
    }
}

// getting all data
$sql_data = "SELECT * FROM news WHERE news_id = $news_id";
$result_data = mysqli_query($con, $sql_data);
if ($result_data) {
    $obj = mysqli_fetch_object($result_data);
    $news_title = $obj->news_title;
    $news_status = $obj->news_status;
    $news_details = $obj->news_details;
    $news_valid_till = $obj->news_valid_till;
} else {
    $error = "Data not found";
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Edit News</title>
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
                    <h1>Edit News </h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-newspaper-o"></i>&nbsp;News  Settings</li>
                        <li class="active">Edit News </li>
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
                                                <form method="POST" id="newsForm" action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" enctype="multipart/form-data">
                                                    <div class="modal-body">
                                                        <input type="hidden" id="news_id" name="news_id" value="<?php echo $news_id; ?>" />
                                                        <div class="form-group">
                                                            <label for="news_title">News Title &nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <input type="text" class="form-control" id="news_title" name="news_title" value="<?php echo $news_title; ?>"/>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="news_details">News Details</label>
                                                            <textarea style="overflow: auto;resize: vertical;" rows="3" cols="30" class="form-control" id="news_details" name="news_details"><?php echo html_entity_decode($news_details, ENT_QUOTES | ENT_IGNORE, "UTF-8"); ?></textarea>
                                                        </div>                                                        
                                                        <div class="form-group">
                                                            <label for="news_image">News Image</label>
                                                            <input type="file" name="news_image" id="news_image" />
                                                        </div>
                                                        <div>
                                                            <img src="../../../upload/news_image/<?php echo $news_image; ?>" style="height: 100%; width: 100%;" />
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="news_valid_till">News Valid Till &nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <div data-provide="datepicker" class="input-group date">
                                                                <input type="text" value="<?php echo $news_valid_till; ?>" name="news_valid_till" id="news_valid_till" class="form-control">
                                                                <div class="input-group-addon">
                                                                    <span class="glyphicon glyphicon-th"></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="news_status">News Status&nbsp;&nbsp;<span style="color:red;">*</label>
                                                            <select id="news_status" name="news_status" class="form-control">
                                                                <option value="0">Select Status</option>
                                                                <option value="Active"
                                                                <?php
                                                                if ($news_status == 'Active') {
                                                                    echo "selected";
                                                                }
                                                                ?>>Active
                                                                </option>
                                                                <option value="Inactive"<?php
                                                                if ($news_status == 'Inactive') {
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
            $("#newsActive").addClass("active");
            $("#newsActive").parent().parent().addClass("treeview active");
            $("#newsActive").parent().addClass("in");
        </script>
        <script>
            $(document).ready(function () {
                $("#news_details").kendoEditor({
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

                    var news_title = $("#news_title").val();
                    var news_valid_till = $("#news_valid_till").val();
                    var news_status = $("#news_status option:selected").val();
                    var status = 0;
                    if (news_title == '') {
                        status++;
                        $("#errorShow").show();
                        $("#news_title").css({
                            "border": "1px solid red"
                        });
                    }


                    if (news_valid_till == '') {
                        status++;
                        $("#errorShow").show();
                        $("#news_valid_till").css({
                            "border": "1px solid red"
                        });
                    }
                    if (news_status == '0') {
                        status++;
                        $("#errorShow").show();
                        $("#news_status").css({
                            "border": "1px solid red"
                        });
                    }
                    if (status == 0) {
                        $("#errorShow").hide();
                        $("#newsForm").submit();
                    }
                });
            });
        </script>
    </body>
</html>