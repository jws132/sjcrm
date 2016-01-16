<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html lang="en">
<head>
<title><?php echo C('WEB_SITE_TITLE');?></title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="keywords" content="<?php echo C('WEB_SITE_KEYWORD');?>" />
<meta name="Description" content="<?php echo C('WEB_SITE_DESCRIPTION');?>" />
<link rel="stylesheet" href="/Public/Home/css/base.css" />
<link rel="stylesheet" href="/Public/Home/css/style.css" />
</head>
<body>
<header>
    <div class="navbar clearfix pb20">
    	<a href="/" class="logo"><img src="/Public/Home/img/logo.png" border="0" alt="<?php echo C('WEB_SITE_TITLE');?>" width="250" /></a>
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

<div class="page-ban" style=" background:url('/Public/Home/img/news.png') #4AA1CC no-repeat center top;">
  <div class="container">
      <h1><?php echo ($channelInfo["title"]); ?></h1>
      <p><?php echo ($channelInfo["name"]); ?></p>
  </div>  
</div>
<div class="con-bg pt30">
    <div class="container news_detail">
       <h6><?php echo ($info["title"]); ?></h6>
       <p class="date">发布人：管理员&nbsp;&nbsp;&nbsp;&nbsp;浏览<?php echo ($info["hits"]); ?>次&nbsp;&nbsp;&nbsp;&nbsp;<?php echo (date('Y-m-d',$info["createtime"])); ?></p>
      <div class="content"> <?php echo (htmlspecialchars_decode($info["content"])); ?></div>
       
    </div>
</div>    

<div class="askbox">
    有疑问或想了解更多，请咨询：<?php echo C('NET_FWRX');?>
</div>
<div class="con-bg">
    <ul class="container clearfix pt30 pb30">
        <li class="fl w300"><img src="/Public/Home/img/logo.png" border="0" alt="<?php echo C('WEB_SITE_TITLE');?>" width="300"></li>
        <li class="fr w750 f14 lh30">
        © Copyright 2015 胜杰软件 All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;<?php echo C('NET_NAME');?>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo C('WEB_SITE_ICP');?> </br>地址：<?php echo C('NET_ADDR');?>&nbsp;&nbsp;&nbsp;&nbsp;传真：<?php echo C('NET_CHUANZHEN');?>
        </li>   
    </ul>
</div>
<script src="/Public/Home/js/jquery-1.7.2.min.js"></script> 
<script src="/Public/Home/js/scrolltop.js"></script>
</body>
</html>