<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
<title>JwsCms内容管理系统</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/Public/Static/css/bootstrap.min.css" />
<link rel="stylesheet" href="/Public/Static/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="/Public/Admin/css/matrix-style.css" />
<link rel="stylesheet" href="/Public/Admin/css/matrix-media.css" />
<!--link href="font-awesome/css/font-awesome.css" rel="stylesheet" /-->
<!--link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'-->
</head>
<body>
<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">MatAdmin</a></h1>
</div>
<!--close-Header-part-->
<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">欢迎Admin</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> 我的资料</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> 我的任务</a></li>
        <li class="divider"></li>
        <li><a href="login.html"><i class="icon-key"></i> 退出</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">消息</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> 新消息</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> 收件箱</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> 发件箱</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> 发送</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">设置</span></a></li>
    <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">退出</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="输入搜索内容..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 控制台</a>
  <ul>
    <li class="active"><a href="index.html"><i class="icon icon-home"></i> <span>首页</span></a> </li>
    <li> <a href="charts.html"><i class="icon icon-signal"></i> <span>图表统计</span></a> </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>插件</span></a> </li>
    <li><a href="tables.html"><i class="icon icon-th"></i> <span>数据表格</span></a></li>
    <li><a href="grid.html"><i class="icon icon-fullscreen"></i> <span>网格布局</span></a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>用户管理</span> </a>
      <ul>
        <li><a href="<?php echo U('Admin/Auth/Role');?>">角色管理</a></li>
        <li><a href="<?php echo U('Admin/Auth/Node');?>">节点管理</a></li>
        <li><a href="<?php echo U('Admin/Auth/addUser');?>">添加用户</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>表单</span> </a>
      <ul>
        <li><a href="form-common.html">基本表单</a></li>
        <li><a href="form-validation.html">带验证的表单</a></li>
        <li><a href="form-wizard.html">带提示的表单</a></li>
      </ul>
    </li>
    <li><a href="buttons.html"><i class="icon icon-tint"></i> <span>按钮 &amp; 图标</span></a></li>
    <li><a href="interface.html"><i class="icon icon-pencil"></i> <span>组件</span></a></li>
    <li class="submenu"> <a href="#"><i class="icon icon-file"></i> <span>其他</span> </a>
      <ul>
        <li><a href="index2.html">首页</a></li>
        <li><a href="gallery.html">相册</a></li>
        <li><a href="calendar.html">日历</a></li>
        <li><a href="invoice.html">清单</a></li>
        <li><a href="chat.html">聊天</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-info-sign"></i> <span>错误页面</span> </a>
      <ul>
        <li><a href="error403.html">403错误页面</a></li>
        <li><a href="error404.html">404错误页面</a></li>
        <li><a href="error405.html">05错误页面</a></li>
        <li><a href="error500.html">500错误页面</a></li>
      </ul>
    </li>
    <li class="content"> <span>每个月带宽</span>
      <div class="progress progress-mini progress-danger active progress-striped">
        <div style="width: 77%;" class="bar"></div>
      </div>
      <span class="percent">77%</span>
      <div class="stat">21419.94 / 14000 MB</div>
    </li>
    <li class="content"> <span>Disk Space Usage</span>
      <div class="progress progress-mini active progress-striped">
        <div style="width: 87%;" class="bar"></div>
      </div>
      <span class="percent">87%</span>
      <div class="stat">604.44 / 4000 MB</div>
    </li>
  </ul>
</div>
<!--sidebar-menu-->


<div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a class="tip-bottom" href="#" data-original-title="Go to Home"><i class="icon-home"></i> 首页</a> <a class="current" href="#"><?php echo ($meta_title); ?></a></div>
  </div>
  <div class="container-fluid">
    <!--conter-->
    
    <a href="<?php echo U('Admin/Auth/addNode');?>">添加节点</a>
    <table  width="50%">
        <tr>
            <th colspan="6"><?php echo ($meta_title); ?></th>
        </tr>
        <tr>
            <td>ID</td>
            <td>应用名称</td>
            <td>应用描述</td>
            <td>排序</td>
            <td>状态</td>
            <td>操作</td>
        </tr>
            <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                <td> <?php echo ($vo["id"]); ?></td>
                <td><?php echo ($vo["name"]); ?></td>
                <td><?php echo ($vo["title"]); ?></td>
                <td><?php echo ($vo["sort"]); ?></td>
                <td><?php if($vo['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
                <td><a href="<?php echo U('Admin/Auth/addNode',array('pid'=>$vo['id'],'level'=> 2 ));?>">添加控制器</a></td>
                </tr>
                <?php if(is_array($vo["child"])): $i = 0; $__LIST__ = $vo["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ac): $mod = ($i % 2 );++$i;?><tr>
                        <td> <?php echo ($ac["id"]); ?></td>
                        <td><?php echo ($ac["name"]); ?></td>
                        <td><?php echo ($ac["title"]); ?></td>
                        <td><?php echo ($ac["sort"]); ?></td>
                        <td><?php if($ac['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
                        <td><a href="<?php echo U('Admin/Auth/addNode',array('pid'=>$ac['id'],'level'=> 3 ));?>">添加方法</a></td>
                    </tr>
                    <?php if(is_array($ac["child"])): $i = 0; $__LIST__ = $ac["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$f): $mod = ($i % 2 );++$i;?><tr>
                            <td> <?php echo ($f["id"]); ?></td>
                            <td><?php echo ($f["name"]); ?></td>
                            <td><?php echo ($f["title"]); ?></td>
                            <td><?php echo ($f["sort"]); ?></td>
                            <td><?php if($f['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
                            <td><a href="<?php echo U('Admin/Auth/addNode');?>">修改</a>&nbsp;&nbsp;<a href="<?php echo U('Admin/Auth/addNode');?>">删除</a></td>
                        </tr><?php endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>

    </table>





    <!--conter-->
  </div>
</div>


<script src="/Public/Static/js/jquery-1.7.2.min.js"></script> 
<script src="/Public/Static/js/bootstrap.min.js"></script> 
<script src="/Public/Admin/js/jquery.ui.custom.js"></script> 
<script src="/Public/Admin/js/matrix.js"></script>
</body>
</html>