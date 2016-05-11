<?php
include '../../../config/config.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Equipment List</title>
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
                    <h1>Equipment List</h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-newspaper-o"></i>&nbsp;Equipment Settings</li>
                        <li class="active">Equipment List</li>
                    </ol>
                </section>
                <section class="content">
                    <?php include basePath('admin/message.php'); ?>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-primary">
                                <div class="k-grid  k-secondary" data-role="grid">
                                    <div class="k-toolbar k-grid-toolbar">
                                        <a class="k-button k-button-icontext k-grid-add" href="<?php echo baseUrl('admin/view/equipment/add.php'); ?>">
                                            <span class="k-icon k-add"></span>
                                            Add Equipment
                                        </a>
                                    </div>
                                </div>
                                <div id="grid"></div>
                                <script id="customtemplate" type="text/x-kendo-template">
                                    <a class="k-button k-button-icontext k-grid-edit" href="<?php echo baseUrl('admin/view/equipment/edit.php'); ?>?id=#= equipment_id#"><span class="k-icon k-edit"></span>Edit</a>
                                    <a class="k-button k-button-icontext k-grid-delete" onclick="javascript:deleteFunction(#= equipment_id #);" ><span class="k-icon k-delete"></span>Delete</a>
                                </script>
                                <script type="text/javascript">
                                    function deleteFunction(equipment_id) {
                                        var c = confirm("Are you sure you want to delete this record?");
                                        if (c === true) {
                                            $.ajax({
                                                type: "POST",
                                                dataType: "json",
                                                url: baseUrl + "admin/controller/equipment/list.php",
                                                data: {equipment_id: equipment_id},
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
                                                    url: baseUrl + "admin/controller/equipment/list.php",
                                                    type: "GET"
                                                },
                                                destroy: {
                                                    url: baseUrl + "admin/controller/equipment/list.php",
                                                    type: "POST"
                                                }
                                            },
                                            autoSync: false,
                                            schema: {
                                                data: "data",
                                                total: "data.length",
                                                model: {
                                                    id: "equipment_id",
                                                    fields: {
                                                        equipment_id: {editable: false, nullable: true},
                                                        equipment_name: {type: "string"},
                                                        equipment_details: {type: "string"},
                                                        equipment_qty: {type: "string"},
                                                        equipment_status: {type: "string"}
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
                                                {field: "equipment_name", title: "Equipment Name", width: "150px"},
                                                {field: "equipment_details", title: "Short Details", width: "150px"},
                                                {field: "equipment_qty", title: "Quantity", width: "120px"},
                                                {field: "equipment_status", title: "Status", width: "120px"},
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
            $("#equipmentActive").addClass("active");
            $("#equipmentActive").parent().parent().addClass("treeview active");
            $("#equipmentActive").parent().addClass("in");
        </script>
        <?php include basePath('admin/footer_script.php'); ?>
    </body>
</html>