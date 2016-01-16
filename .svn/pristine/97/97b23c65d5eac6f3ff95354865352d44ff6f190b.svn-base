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
                    <a href="/index.php/home/<?php echo ($vo["model"]); ?>/index/id/<?php echo ($vo["id"]); ?>"><?php echo ($vo["title"]); ?></a>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
    		<!--li><a href="/Index/about.html">公司简介</a></li>
    		<li><a href="/Index/cases.html">解决方案</a></li>
    		<li><a href="/Index/pro.html">产品中心</a></li>
    		<li><a href="#">代理产品</a></li>
    		<li class="no"><a href="/Index/support.html">技术服务</a></li-->
    	</ul>
    </div>
</header>

<div class="page-ban" style=" background:url('/Public/Home/img/case.png') #8CC63E no-repeat center top;">
    <div class="container">
      <h1 class="tr"><?php echo ($channelInfo["title"]); ?></h1>
      <p class="tr"><?php echo ($channelInfo["name"]); ?></p>
  </div>     
</div>
<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="<?php echo ($mod==0?'con-bg':''); ?>">
     <div class="container case pt20 pb20">
        <h2><?php echo ($vo["title"]); ?></h2>
        <div class="clearfix">
        <div class="<?php echo ($mod==0?'fl':'fr'); ?> w350 tc"><img src="/Uploads/Images/<?php echo ($vo["img"]); ?>"  alt="<?php echo ($vo["title"]); ?>"  height="300" width="300"/></div>
            
            <p class="w700 <?php echo ($mod==0?'fr':'fl'); ?> ml15">
                <?php echo ($vo["description"]); ?>
                            <p class="more" style=" text-align: <?php echo ($mod==0?'right':'left'); ?>;">
                              <a href="/index.php/home/article/Content/id/<?php echo ($vo["id"]); ?>">阅读全文</a>
                            </p>
            </p>
        </div>
     </div>
</div><?php endforeach; endif; else: echo "" ;endif; ?>

 <div class="page"><?php echo ($page); ?></div>
<div class="container pt20 clearfix">
    <div class="fl w650 tc">
       <img src="/Public/Home/img/new-b.png" border="0" />
    </div>
    <div class="fr w400 tc pb15">
        <h1 style="font-size:30px;" class="pt70 pb50">赶紧申请试用吧？还等什么</h1>
<a href="/" class="btn pt10 pr50 pb10 pl50 ">立即申请试用</a>
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