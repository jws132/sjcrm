<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html lang="en">
<head>
<title>北京胜杰通华软件技术有限公司</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keywords" content="北京胜杰通华软件技术有限公司" />
<meta name="Description" content="北京胜杰通华软件技术有限公司" />
<link rel="stylesheet" href="/Public/Home/css/base.css" />
<link rel="stylesheet" href="/Public/Home/css/style.css" />
</head>
<body>
<header>
    <div class="navbar clearfix pb20">
    	<a href="/" class="logo"><img src="/Public/Home/img/logo.png" border="0" alt="" width="250" /></a>
    	<ul class="pt10">
    		<li><a href="/">首页</a></li>
            <?php $__NAVLIST__ = D('Channel')->getNav(0); if(is_array($__NAVLIST__)): $i = 0; $__LIST__ = $__NAVLIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
                    <a href="/index.php/Home/<?php echo ($vo["model"]); ?>/index/id/<?php echo ($vo["id"]); ?>"><?php echo ($vo["title"]); ?></a>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
    		<!--li><a href="/Index/about.html">公司简介</a></li>
    		<li><a href="/Index/cases.html">解决方案</a></li>
    		<li><a href="/Index/pro.html">产品中心</a></li>
    		<li><a href="#">代理产品</a></li>
    		<li class="no"><a href="/Index/support.html">技术服务</a></li-->
    	</ul>
    </div>
</header>

<div class="con-bg">
     <div class="container clearfix">
	     <div class="assets mt20 mb20 pl15 pr15 pt15 pb15">
	     	  <ul class="lh40">
	     	  	  <?php if(is_array($channel)): $i = 0; $__LIST__ = $channel;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="/index.php/Home/<?php echo ($vo["model"]); ?>/index/id/<?php echo ($vo["id"]); ?>"><?php echo ($vo["title"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
	     	  </ul>
	     </div>
	     <div class="fr w850 mt20 mb20">
	       <h3 class="n-title"><?php echo ($channelInfo["title"]); ?></h3>
	       <div class="pt15 pb15 pl15 pr15 lh30 f16" style="color:#707070">
	       	　  <?php echo (htmlspecialchars_decode($channelInfo["content"])); ?>

	       </div>

	      </div>
     </div>
</div>

<div class="askbox">
    有疑问或想了解更多，请咨询：400-000-0000
</div>
<div class="con-bg">
    <ul class="container clearfix pt30 pb30">
        <li class="fl w300"><img src="/Public/Home/img/logo.png" border="0" width="300"></li>
        <li class="fr w750 f14 lh30">
        © Copyright 2015 胜杰软件 All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;北京胜杰通华软件技术有限公司&nbsp;&nbsp;&nbsp;&nbsp;京ICP备 09089591号-1 </br>地址：北京市南三环中路71号扑满山大厦3栋9层&nbsp;&nbsp;&nbsp;&nbsp;传真：010-87653153 
        </li>   
    </ul>
</div>
<script src="/Public/Home/js/jquery-1.7.2.min.js"></script> 
<script src="/Public/Home/js/scrolltop.js"></script>
</body>
</html>