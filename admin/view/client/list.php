<?php
include '../../../config/config.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Client List</title>
        <?php include basePath('admin/header_script.php'); ?>
    </head>
    <body class="skin-blue">
        <div class="wrapper">
            <?php include basePath('admin/header.php'); ?>
            <aside class="main-sidebar">
                <?php include basePath('admin/site_menu.php'); ?>
            </aside>
            <div class="content-wrapper">
                <section class="content-header">
                    <h1>Clients List</h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-newspaper-o"></i>&nbsp;General Settings</li>
                        <li class="active">Clients List</li>
                    </ol>
                </section>
                <section class="content">
                    <?php include basePath('admin/message.php'); ?>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-primary">
                                <div class="k-grid  k-secondary" data-role="grid">
                                    <div class="k-toolbar k-grid-toolbar">
                                        <a class="k-button k-button-icontext k-grid-add" href="<?php echo baseUrl('admin/view/client/add.php'); ?>">
                                            <span class="k-icon k-add"></span>
                                            Add Clients
                                        </a>
                                    </div>
                                </div>
                                <div id="grid"></div>
                                <script id="customtemplate" type="text/x-kendo-template">
                                    <a class="k-button k-button-icontext k-grid-edit" href="<?php echo baseUrl('admin/view/client/edit.php'); ?>?id=#= client_id#"><span class="k-icon k-edit"></span>Edit</a>
                                    <a class="k-button k-button-icontext k-grid-delete" onclick="javascript:deleteFunction(#= client_id #);" ><span class="k-icon k-delete"></span>Delete</a>
                                </script>
                                <script type="text/javascript">
                                    function deleteFunction(client_id) {
                                        var c = confirm("Are you sure you want to delete this record?");
                                        if (c === true) {
                                            $.ajax({
                                                type: "POST",
                                                dataType: "json",
                                                url: baseUrl + "admin/controller/client/list.php",
                                                data: {client_id: client_id},
                                                success: function (result) {
                                                    if (result === true) {
                                                        $(".k-i-refresh").click();
                                                    }
                                                }
                                            });
                                        }
                                    }
                                </script>
                                
                                <script type="text/javascript">
                                    $(document).ready(function () {
                                        var dataSource = new kendo.data.DataSource({
                                            pageSize: 10,
                                            transport: {
                                                read: {
                                                    url: baseUrl + "admin/controller/client/list.php",
                                                    type: "GET"
                                                },
                                                destroy: {
                                                    url: baseUrl + "admin/controller/client/list.php",
                                                    type: "POST"
                                                }
                                            },
                                            autoSync: false,
                                            schema: {
                                                data: "data",
                                                total: "data.length",
                                                model: {
                                                    id: "client_id",
                                                    fields: {
                                                        client_id: {editable: false, nullable: true},
                                                        client_name: {type: "string"},
                                                        client_link: {type: "string"},
                                                        client_status: {type: "string"},
                                                        client_image: {type: "string"},
                                                        client_created_on: {type: "string"}
                                                    }
                                                }
                                            }
                                        });
                                        $("#grid").kendoGrid({
                                            dataSource: dataSource,
                                            filterable: true,
                                            pageable: {
                                                refresh: true,
                                                input: true,
                                                numeric: false,
                                                pageSizes: true,
                                                pageSizes: [10, 20, 50, 100, 200],
                                            },
                                            sortable: true,
                                            groupable: true,
                                            columns: [
                                                {field: "client_name", title: "Client Name", width: "150px"},
                                                {field: "client_link", title: "Link", width: "150px"},
                                                {field: "client_image",
                                                    title: "Image",
                                                    width: "150px",
                                                    template: "<img src='<?php echo baseUrl("upload/client_image/") ?>#=client_image#' height='50' width='150'/>"
                                                },
                                                {field: "client_status", title: "Status", width: "120px"},
                                                {field: "client_created_on", title: "Created On", width: "130px"},
                                                {
                                                    title: "Action", width: "180px",
                                                    template: kendo.template($("#customtemplate").html())
                                                }
                                            ]
                                        });
                                    });
                                </script>
                                
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
    </body>
</html>