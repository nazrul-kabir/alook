<?php
include '../../../config/config.php';
$news_title = '';
$news_status = '';
$news_valid_till = '';
$news_image = '';
$news_details = '';
$news_created_on = date('Y-m-d H:i:s');
$news_created_by = getSession('admin_id');
$flag = 0;
if (isset($_POST['news_title'])) {
    extract($_POST);
    

    $news_title = validateInput($news_title);
    $news_details = validateInput($news_details);
    $news_status = validateInput($news_status);
    $news_valid_till = validateInput($news_valid_till);

    $sql_check = "SELECT * FROM news WHERE news_title = '$news_title'";
    $result_check = mysqli_query($con, $sql_check);
    $count = mysqli_num_rows($result_check);
    if ($count > 0) {
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
            $custom_array = '';
            $custom_array .= 'news_title = "' . $news_title . '"';
            $custom_array .= ',news_image = "' . $renameFile . '"';
            $custom_array .= ',news_details = "' . $news_details . '"';
            $custom_array .= ',news_valid_till = "' . $news_valid_till . '"';
            $custom_array .= ',news_status = "' . $news_status . '"';
            $custom_array .= ',news_created_on = "' . $news_created_on . '"';
            $custom_array .= ',news_created_by = "' . $news_created_by . '"';

            $sql = "INSERT INTO news SET $custom_array";
            $result = mysqli_query($con, $sql);

            if ($result) {
                $success = 'News information saved successfully';
                $link = baseUrl() . "admin/view/news/list.php?success=" . base64_encode($success);
                redirect($link);
            } else {
                if (DEBUG) {
                    $error = 'result query failed for ' . mysqli_error($con);
                } else {
                    $error = 'Something went wrong';
                }
            }
        } else {
            $error = 'Something went wrong';
        }
    }
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Add News</title>
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
                    <h1>Add News</h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-laptop"></i>&nbsp;News Settings</li>
                        <li class="active">Add News</li>
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
                                                        <div class="form-group">
                                                            <label for="news_title">News Title &nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <input type="text" class="form-control" id="news_title" name="news_title" value="<?php echo $news_title; ?>"/>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="news_details">News Details</label>
                                                            <textarea style="overflow: auto;resize: vertical;" rows="3" cols="30" class="form-control" id="news_details" name="news_details"><?php echo html_entity_decode($news_details, ENT_QUOTES | ENT_IGNORE, "UTF-8"); ?></textarea>
                                                        </div>                                                        
                                                        <div class="form-group">
                                                            <label for="news_image">News Image&nbsp;&nbsp;<span style="color:red;">*</span></label>
                                                            <input type="file" name="news_image" id="news_image" />
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
            $("#newsActive").addClass("active");
            $("#newsActive").parent().parent().addClass("treeview active");
            $("#newsActive").parent().addClass("in");
        </script>
        <?php include basePath('admin/footer_script.php'); ?>
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
        <script>
            $(document).ready(function () {
                $("#btnSave").click(function () {

                    var news_title = $("#news_title").val();
                    var news_image = $("#news_image").val();
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

                    if (news_image == '') {
                        status++;
                        $("#errorShow").show();
                        $("#news_image").css({
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