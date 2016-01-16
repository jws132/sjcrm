<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?php echo ($meta_title); ?>|OneThink管理平台</title>
    <style>
        *{padding: 0px; margin: 0px;}
        .sidebar{ float:left; background-color: #000000; width: 100%; }
        .sidebar li{  line-height:50px; float:left;;}
        .sidebar li a{  color: #fff ; padding: 0 20px; text-decoration: none;}
    </style>
</head>
<body>


<ul class="sidebar">
    <li><a href="<?php echo U('Admin/Auth/addrole');?>">添加角色</a></li>
    <li><a href="<?php echo U('Admin/Auth/adduser');?>">添加用户</a></li>
</ul>





    <?php echo ($meta_title); ?>


</body>
</html>