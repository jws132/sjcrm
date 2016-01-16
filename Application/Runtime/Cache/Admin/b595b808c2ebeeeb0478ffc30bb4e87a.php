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
<link href="/Public/Admin/css/font-awesome/css/font-awesome.css" rel="stylesheet" />
<script src="/Public/Static/js/jquery-1.7.2.min.js"></script> 
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
  <ul class="nav" style="font-size:12px;">
    <li><a title="" href="#" ><i class="icon icon-user"></i>  <span class="text"><?php echo ($sessionUserName); ?></span></a>
    </li>
    <li class=""><a title="" href="/" target="_blank"><i class="icon icon-home"></i> <span class="text">前台页面</span></a></li>
    <li class=""><a title="" href="<?php echo U('Admin/Config/Group');?>"><i class="icon icon-cog"></i> <span class="text">网站设置</span></a></li>
    <!--li  class="dropdown" id="profile-lang" >
    <a title="" href="#" data-toggle="dropdown" data-target="#profile-lang" class="dropdown-toggle">
    <?php if($langSet == 'zh-cn'): ?><img src="/Public/Admin/img/zh-cn.png"><?php else: ?><img src="/Public/Admin/img/en-us.png" ><?php endif; ?>
    <span class="text">语言</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="?l=zh-cn"><img src="/Public/Admin/img/zh-cn.png" border="0">&nbsp;&nbsp;中文</a></li>
        <li><a href="?l=en-us"><img src="/Public/Admin/img/en-us.png" border="0">&nbsp;&nbsp;英文</a></li>
      </ul>
    </li-->
    <li><a title="" href="<?php echo U('Admin/Public/Logout');?>"><i class="icon icon-share-alt"></i> <span class="text">退出</span></a></li>
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
        <li><a href="<?php echo U('Admin/Auth/Index');?>">角色管理</a></li>
        <li><a href="<?php echo U('Admin/User/Index');?>">用户管理</a></li>
        <li><a href="<?php echo U('Admin/SystemLog/Index');?>">日志管理</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>系统管理</span> </a>
      <ul>
        <li><a href="<?php echo U('Admin/Node/Index');?>">菜单配置</a></li>
        <li><a href="<?php echo U('Admin/Config/Index');?>">配置管理</a></li>
        <li><a href="<?php echo U('Admin/Model/Index');?>">模型管理</a></li>
        <li><a href="<?php echo U('Admin/Public/Logout');?>">带提示的表单</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>前台管理</span> </a>
      <ul>
        <li><a href="<?php echo U('Admin/Channel/Index');?>">栏目管理</a></li>
        <li><a href="<?php echo U('Admin/Config/Index');?>">配置管理</a></li>
        <li><a href="<?php echo U('Admin/Model/Index');?>">模型管理</a></li>
        <li><a href="<?php echo U('Admin/Public/Logout');?>">带提示的表单</a></li>
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
    
<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; echo ($vo["id"]); ?> <?php echo ($vo["title"]); endforeach; endif; else: echo "" ;endif; ?>

    <!--conter-->
  </div>
</div>


<script src="/Public/Static/js/bootstrap.min.js"></script> 
<script src="/Public/Admin/js/jquery.ui.custom.js"></script> 
<script src="/Public/Admin/js/matrix.js"></script>
</body>
</html>