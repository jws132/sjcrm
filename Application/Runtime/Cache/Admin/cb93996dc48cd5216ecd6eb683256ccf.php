<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
<title>JwsCms内容管理系统</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/Public/Admin/css/select.css" />
<link rel="stylesheet" href="/Public/Admin/css/style.css" />
<script src="/Public/Static/js/jquery-1.7.2.min.js"></script> 
</head>
<body>
<header style="background:url('/Public/Admin/img/topbg.gif') repeat-x; height:88px;">
	 <div class="topleft"><a href="main.html" target="_parent"><img src="/Public/Admin/img/logo.png" title="系统首页" /></a></div>
    <ul class="nav">
	    <li><a href="default.html" class="selected"><img src="/Public/Admin/img/icon01.png" title="工作台" /><h2>工作台</h2></a></li>
	    <li><a href="imgtable.html"><img src="/Public/Admin/img/icon02.png" title="模型管理" /><h2>模型管理</h2></a></li>
	    <li><a href="imglist.html"><img src="/Public/Admin/img/icon03.png" title="模块设计" /><h2>模块设计</h2></a></li>
	    <li><a href="tools.html"><img src="/Public/Admin/img/icon04.png" title="常用工具" /><h2>常用工具</h2></a></li>
	    <li><a href="computer.html" ><img src="/Public/Admin/img/icon05.png" title="文件管理" /><h2>文件管理</h2></a></li>
	    <li><a href="tab.html" ><img src="/Public/Admin/img/icon06.png" title="系统设置" /><h2>系统设置</h2></a></li>
    </ul>
            
    <div class="topright">    
    <ul>
    <li><span><img src="/Public/Admin/img/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="login.html" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>admin</span>
    <i>消息</i>
    <b>5</b>
    </div>     
    </div>
</header>	
<section class="leftmenu">
		<div class="lefttop"><span></span>通讯录</div> 
	    	<ul class="menuson">
	        <li><cite></cite><a href="index.html" target="rightFrame">首页模版</a><i></i></li>
	        <li class="active"><cite></cite><a href="right.html" target="rightFrame">数据列表</a><i></i></li>
	        <li><cite></cite><a href="imgtable.html" target="rightFrame">图片数据表</a><i></i></li>
	        <li><cite></cite><a href="form.html" target="rightFrame">添加编辑</a><i></i></li>
	        <li><cite></cite><a href="imglist.html" target="rightFrame">图片列表</a><i></i></li>
	        <li><cite></cite><a href="imglist1.html" target="rightFrame">自定义</a><i></i></li>
	        <li><cite></cite><a href="tools.html" target="rightFrame">常用工具</a><i></i></li>
	        <li><cite></cite><a href="filelist.html" target="rightFrame">信息管理</a><i></i></li>
	        <li><cite></cite><a href="tab.html" target="rightFrame">Tab页</a><i></i></li>
	        <li><cite></cite><a href="error.html" target="rightFrame">404页面</a><i></i></li>
	        </ul>    
</section>
<div id="content">
    
	
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">表单</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span><?php echo ($meta_title); ?></span></div>
    <form action="<?php echo U('Add');?>" method="post">
    <ul class="forminfo">
    <li><label>角色名</label><input name="name" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>角色描述</label><input name="remark" type="text" class="dfinput" /><i>多个关键字用,隔开</i></li>
    <li><label>角色描述</label><cite><input type="radio" name="status" value="1" checked="checked"> 开启&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="status" value="0"> 关闭</cite></li>
    <li><label>&nbsp;</label><button class="btn btn-primary" type="submit">保存</button></li>
    </ul>
    
    </form>
    </div>


</div> 
  <script type="text/javascript">
	  $('.tablelist tbody tr:odd').addClass('odd');
	  $('.leftmenu').css('height',$(window).height()-88 +'px');  
	</script>
</body>
</html>