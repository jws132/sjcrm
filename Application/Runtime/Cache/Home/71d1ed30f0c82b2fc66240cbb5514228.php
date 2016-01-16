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

<div class="page-ban" style=" background:url('/Public/Home/img/news.png') #4AA1CC no-repeat center top;">
  <div class="container">
      <h1><?php echo ($channelInfo["title"]); ?></h1>
      <p><?php echo ($channelInfo["name"]); ?></p>
  </div>  
</div>
<div class="con-bg pt30">
    <div class="container">
        <div class="news_list  clearfix">         
            <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><ul>
                <li>
                    <dl>
                        <dt style="height:165px; width:165px; overflow:hidden; border:none"><img src="/Uploads/Images/<?php echo ($vo["img"]); ?>" alt="<?php echo ($vo["title"]); ?>" width="165"></dt>
                        <dd>
                            <p class="tit"><a href="/index.php/home/article/Content/id/<?php echo ($vo["id"]); ?>" title="<?php echo ($vo["title"]); ?>"><?php echo ($vo["title"]); ?></a></p>
                            <p class="date"><?php echo (date('Y-m-d',$vo["createtime"])); ?> </p>
                            <p class="txt">
                                <?php echo ($vo["description"]); ?>
                            </p>
                            <p class="more">
                                <a href="/index.php/home/article/Content/id/<?php echo ($vo["id"]); ?>">阅读全文</a>
                            </p>
                        </dd>
                    </dl>
                </li>
             </ul><?php endforeach; endif; else: echo "" ;endif; ?>
            <div class="page"><?php echo ($page); ?></div>
        </div>
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