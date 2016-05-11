<?php
include '../../../config/config.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Alook Refrigeration CO. Ltd | News List</title>
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
                    <h1>News List</h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-newspaper-o"></i>&nbsp;News Settings</li>
                        <li class="active">News List</li>
                    </ol>
                </section>
                <section class="content">
                    <?php include basePath('admin/message.php'); ?>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-primary">
                                <div class="k-grid  k-secondary" data-role="grid">
                                    <div class="k-toolbar k-grid-toolbar">
                                        <a class="k-button k-button-icontext k-grid-add" href="<?php echo baseUrl('admin/view/news/add.php'); ?>">
                                            <span class="k-icon k-add"></span>
                                            Add News
                                        </a>
                                    </div>
                                </div>
                                <div id="grid"></div>
                                <script id="news_template" type="text/x-kendo-template">
                                    <a class="k-button k-button-icontext k-grid-edit" href="<?php echo baseUrl('admin/view/news/edit.php'); ?>?id=#= news_id#"><span class="k-icon k-edit"></span>Edit</a>
                                    <a class="k-button k-button-icontext k-grid-delete" onclick="javascript:delete_news(#= news_id #);" ><span class="k-icon k-delete"></span>Delete</a>
                                </script>
                                <script type="text/javascript">
                                    function delete_news(news_id) {
                                        var c = confirm("Are you sure you want to delete this record?");
                                        if (c === true) {
                                            $.ajax({
                                                type: "POST",
                                                dataType: "json",
                                                url: baseUrl + "admin/controller/news/list.php",
                                                data: {news_id: news_id},
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
                                    News Details
                                    </li>
                                    </ul>
                                    <div>
                                    <div class='general-info'>
                                     # if(news_details != ""){ #
                                    <h5 style="margin-left:10px;">#=news_details #</h5>
                                    # }else{#
                                    <h5 style="margin-left:10px;"> No project short details available now !!!</h5>
                                    # } #
                                    </div>
                                </script>
                                <script type="text/javascript">
                                    $(document).ready(function () {
                                        var dataSource = new kendo.data.DataSource({
                                            pageSize: 10,
                                            transport: {
                                                read: {
                                                    url: baseUrl + "admin/controller/news/list.php",
                                                    type: "GET"
                                                },
                                                destroy: {
                                                    url: baseUrl + "admin/controller/news/list.php",
                                                    type: "POST"
                                                }
                                            },
                                            autoSync: false,
                                            schema: {
                                                data: "data",
                                                total: "data.length",
                                                model: {
                                                    id: "news_id",
                                                    fields: {
                                                        news_id: {editable: false, nullable: true},
                                                        news_title: {type: "string"},
                                                        news_details: {type: "string"},
                                                        news_status: {type: "string"},
                                                        news_valid_till: {type: "string"},
                                                        news_image: {type: "string"},
                                                        news_created_on: {type: "string"}
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
                                                {field: "news_title", title: "News Title", width: "150px"},
                                                {field: "news_image",
                                                    title: "Image",
                                                    width: "150px",
                                                    template: "<img src='<?php echo baseUrl("upload/news_image/") ?>#=news_image#' height='50' width='200'/>"
                                                },
                                                {field: "news_valid_till", title: "Valid Till", width: "120px"},
                                                {field: "news_status", title: "Status", width: "120px"},
                                                {field: "news_created_on", title: "Created On", width: "130px"},
                                                {
                                                    title: "Action", width: "180px",
                                                    template: kendo.template($("#news_template").html())
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
            $("#newsActive").addClass("active");
            $("#newsActive").parent().parent().addClass("treeview active");
            $("#newsActive").parent().addClass("in");
        </script>
        <?php include basePath('admin/footer_script.php'); ?>
    </body>
</html>