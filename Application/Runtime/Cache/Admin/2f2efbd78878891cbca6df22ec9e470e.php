<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?php echo ($meta_title); ?>|OneThink管理平台</title>
    <script type="text/javascript" src="/Public/Admin/js/jquery-1.7.2.min.js"></script>
    <style>
        *{padding: 0px; margin: 0px;}
        .sidebar{ float:left; background-color: #000000; width: 100%; margin-bottom: 20px; }
        .sidebar li{  line-height:50px; float:left;;}
        .sidebar li a{  color: #fff ; padding: 0 20px; text-decoration: none;}
        table td{ padding: 7px 0;}
    </style>
</head>
<body>


<ul class="sidebar">
    <li><a href="<?php echo U('Admin/Auth/Role');?>">角色管理</a></li>
    <li><a href="<?php echo U('Admin/Auth/Node');?>">节点管理</a></li>
    <li><a href="<?php echo U('Admin/Auth/addUser');?>">添加用户</a></li>
</ul>





    <form action="<?php echo U('Admin/Auth/addNode');?>" method="post">
        <table>
            <tr>
                <th colspan="2"><?php echo ($meta_title); ?></th>
            </tr>
            <tr>
                <td><?php echo ($type); ?>名称</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td><?php echo ($type); ?>描述</td>
                <td><input type="text" name="title"></td>
            </tr>
            <tr>
                <td>是否开启</td>
                <td><input type="radio" name="status" value="1" checked="checked">&nbsp;&nbsp;开启&nbsp;&nbsp;
                    <input type="radio" name="status" value="0">&nbsp;&nbsp;关闭</td>
            </tr>
            <tr>
                <td>排序</td>
                <td><input type="text" name="sort" value="10"></td>
        </tr>
            <tr><td></td>
                <td >
                    <input type="hidden" name="pid" value="<?php echo ($pid); ?>">
                    <input type="hidden" name="level" value="<?php echo ($level); ?>">
                    <input type="submit" value="保存"></td>
            </tr>
        </table>
    </form>


</body>
</html>