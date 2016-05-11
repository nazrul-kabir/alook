<?php
include '../../../config/config.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | Product List</title>
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
                    <h1>Product List</h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-newspaper-o"></i>&nbsp;Product Settings</li>
                        <li class="active">Product List</li>
                    </ol>
                </section>
                <section class="content">
                    <?php include basePath('admin/message.php'); ?>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-primary">
                                <div class="k-grid  k-secondary" data-role="grid">
                                    <div class="k-toolbar k-grid-toolbar">
                                        <a class="k-button k-button-icontext k-grid-add" href="<?php echo baseUrl('admin/view/product/add.php'); ?>">
                                            <span class="k-icon k-add"></span>
                                            Add Product
                                        </a>
                                    </div>
                                </div>
                                <div id="grid"></div>
                                <script id="customtemplate" type="text/x-kendo-template">
                                    <a class="k-button k-button-icontext k-grid-view" href="<?php echo baseUrl('admin/view/product/view.php'); ?>?id=#= product_id#"><span class="k-icon k-i-hbars"></span>Details</a>
                                    <a class="k-button k-button-icontext k-grid-edit" href="<?php echo baseUrl('admin/view/product/edit.php'); ?>?id=#= product_id#"><span class="k-icon k-edit"></span>Edit</a>
                                    <a class="k-button k-button-icontext k-grid-delete" onclick="javascript:deleteFunction(#= product_id #);" ><span class="k-icon k-delete"></span>Delete</a>
                                </script>
                                <script type="text/javascript">
                                    function deleteFunction(product_id) {
                                        var c = confirm("Are you sure you want to delete this record?");
                                        if (c === true) {
                                            $.ajax({
                                                type: "POST",
                                                dataType: "json",
                                                url: baseUrl + "admin/controller/product/list.php",
                                                data: {product_id: product_id},
                                                success: function (result) {
                                                    if (result === true) {
                                                        $(".k-i-refresh").click();
                                                    }
                                                }
                                            });
                                        }
                                    }
                                </script>
                                <script type="text/x-kendo-template" id="template">
                                    <div class="tabstrip">
                                    <ul>
                                    <li class="k-state-active">
                                    Product Image
                                    </li>
                                    </ul>
                                    <div>
                                    <div class='general-info'>
                                    # if(product_image !=""){#
                                    <div style="margin-left:10px;"><img src="<?php echo baseUrl("upload/product_image/") ?>#=product_image#" height='100' width='100'</div>
                                    </div>
                                    # } else { #
                                    <div><img src='<?php echo baseUrl("upload/product_image/no_image.jpg") ?>' height='100' width='100'</div>
                                    </div>
                                    # } #
                                    </div>
                                    </div>
                                </script>
                                <script type="text/javascript">
                                    $(document).ready(function () {
                                        var dataSource = new kendo.data.DataSource({
                                            pageSize: 10,
                                            transport: {
                                                read: {
                                                    url: baseUrl + "admin/controller/product/list.php",
                                                    type: "GET"
                                                },
                                                destroy: {
                                                    url: baseUrl + "admin/controller/product/list.php",
                                                    type: "POST"
                                                }
                                            },
                                            autoSync: false,
                                            schema: {
                                                data: "data",
                                                total: "data.length",
                                                model: {
                                                    id: "product_id",
                                                    fields: {
                                                        product_id: {editable: false, nullable: true},
                                                        product_title: {type: "string"},
                                                        product_details: {type: "string"},
                                                        product_type_name: {type: "string"},
                                                        pc_name: {type: "string"},
                                                        product_status: {type: "string"},
                                                        product_image: {type: "string"},
                                                        product_created_on: {type: "string"}
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
                                                {field: "product_title", title: "Product Title", width: "150px"},
                                                {field: "pc_name", title: "Product Category", width: "120px"},
                                                {field: "product_type_name", title: "Product Type", width: "120px"},
                                                {field: "product_status", title: "Status", width: "120px"},
                                                {field: "product_created_on", title: "Created On", width: "130px"},
                                                {
                                                    title: "Action", width: "250px",
                                                    template: kendo.template($("#customtemplate").html())
                                                }
                                            ],
                                            detailTemplate: kendo.template(jQuery("#template").html()),
                                            detailInit: detailInit,
                                            dataBound: function () {
                                                this.expandRow(this.tbody.find("tr.k-master-row").first());
                                            }
                                        });
                                        function detailInit(e) {
                                            var detailRow = e.detailRow;
                                            detailRow.find(".tabstrip").kendoTabStrip({
                                                animation: {
                                                    open: {effects: "fadeIn"}
                                                }
                                            });
                                        }
                                    });

                                </script>
                                <style scoped>
                                    .k-detail-cell .k-tabstrip .k-content {
                                        padding: 0.2em;
                                    }
                                    .general-info ul
                                    {
                                        list-style:none;
                                        font-style:italic;
                                        margin: 5px;
                                        padding: 0;
                                    }
                                    .general-info ul li
                                    {
                                        margin: 0;
                                        line-height: 1.7em;
                                    }
                                    .general-info label
                                    {
                                        display:inline-block;
                                        width:150px;
                                        padding-right: 10px;
                                        text-align: right;
                                        font-style:normal;
                                        font-weight:bold;
                                    }
                                </style>
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
        <?php include basePath('admin/footer_script.php'); ?>
    </body>
</html>