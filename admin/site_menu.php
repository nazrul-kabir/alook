<section class="sidebar">
    <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li id="dashActive"><a href="<?php echo baseUrl('admin/view/dashboard.php'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="treeview">
            <a href="#">
                <i class="fa fa-laptop"></i>
                <span>General Settings</span>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
                <li id="countryActive"><a href="<?php echo baseUrl('admin/view/country/list.php'); ?>"><i class="fa fa-circle-o"></i> Country List</a></li>
                <li id="bannerActive"><a href="<?php echo baseUrl('admin/view/banner/list.php'); ?>"><i class="fa fa-circle-o"></i> Banner List</a></li>
            </ul>
        </li>
        <li class="treeview">
            <a href="#">
                <i class="fa fa-laptop"></i>
                <span>Equipment Settings</span>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
                <li id="equipmentActive"><a href="<?php echo baseUrl('admin/view/equipment/list.php'); ?>"><i class="fa fa-circle-o"></i> Equipment List</a></li>
            </ul>
        </li>
        <li class="treeview">
            <a href="#">
                <i class="fa fa-list-alt"></i>
                <span>Product Settings</span>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
                <li id="proCategoryActive"><a href="<?php echo baseUrl('admin/view/product_category/list.php'); ?>"><i class="fa fa-circle-o"></i> Product Category List</a></li>
                <li id="productActive"><a href="<?php echo baseUrl('admin/view/product/list.php'); ?>"><i class="fa fa-circle-o"></i> Product List</a></li>
            </ul>
        </li>
        <li class="treeview">
            <a href="#">
                <i class="fa fa-list-alt"></i>
                <span>Project Settings</span>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
                <li id="projectActive"><a href="<?php echo baseUrl('admin/view/project/list.php'); ?>"><i class="fa fa-circle-o"></i> Project List</a></li>
            </ul>
        </li>
        <li class="treeview">
            <a href="#">
                <i class="fa fa-list-alt"></i>
                <span>Client Settings</span>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
                <li id="clientsActive"><a href="<?php echo baseUrl('admin/view/client/list.php'); ?>"><i class="fa fa-circle-o"></i> Client List</a></li>
            </ul>
        </li>
        <li class="treeview">
            <a href="#">
                <i class="fa fa-list-alt"></i>
                <span>News Settings</span>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
                <li id="newsActive"><a href="<?php echo baseUrl('admin/view/news/list.php'); ?>"><i class="fa fa-circle-o"></i> News List</a></li>
            </ul>
        </li>
        <li id="contactActive"><a href="<?php echo baseUrl('admin/view/contact/list.php'); ?>"><i class="fa fa-comment"></i> Contact Information</a></li>
    </ul>
</section>