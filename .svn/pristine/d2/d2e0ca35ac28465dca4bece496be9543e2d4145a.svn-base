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

<div class="page-ban" style=" background:url('/Public/Home/img/hj.png') #0686CF no-repeat center top;"></div>
<?php if(is_array($channel)): $i = 0; $__LIST__ = $channel;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="<?php echo ($mod==0?'con-bg':''); ?>">
       <div class="container pro pt40 pb40">
          <h2><?php echo ($vo["title"]); ?></h2>
            <div class="clearfix pt30">
                <div class="w300 fl"><img src="/Uploads/Images/<?php echo ($vo["img"]); ?>"  alt="<?php echo ($vo["title"]); ?>"/></div>
                <div class="w750 fr">
                  <h3>适合客户：<em><?php echo ($vo["name"]); ?></em></h3>
                  <p class="con"><?php echo ($vo["description"]); ?></p>
                  <div class="con_box">
                      <h3>平台系列</h3>
                      <ul class="list pt15">
                          <?php if(is_array($list)): foreach($list as $key=>$l): if(($vo["id"]) == $l["channel"]): ?><li><a href="/index.php/Home/Article/Content/id/<?php echo ($l["id"]); ?>"><?php echo ($l["title"]); ?></a></li><?php endif; endforeach; endif; ?>
                      </ul>
                  </div>
                </div>
              
           </div>
       </div>
  </div><?php endforeach; endif; else: echo "" ;endif; ?>
    <div class="container">
        <h2 class="title">我们的客户</h2>
        <div class="case-title">
            <ul>
             <?php $__ARTICLELIST__ = M('Article')->where("status = 1  and channel = 40")->limit(1)->select(); if(is_array($__ARTICLELIST__)): $i = 0; $__LIST__ = $__ARTICLELIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><?php echo ($vo["description"]); ?><p class="tr">-----<?php echo ($vo["title"]); ?></p></li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
            <span class="case_mark1"></span>
            <span class="case_mark2"></span>
        </div>
        <ul class="case-list clearfix pb20 pt15">
          <?php $__ARTICLELIST__ = M('Article')->where("status = 1  and channel = 40")->limit(12)->select(); if(is_array($__ARTICLELIST__)): $i = 0; $__LIST__ = $__ARTICLELIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$kh): $mod = ($i % 2 );++$i;?><li><img src="/Uploads/Images/<?php echo ($kh["img"]); ?>" border="0" height="150" width="150" alt="<?php echo ($kh["title"]); ?>" /></li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>

    </div>


<div class="askbox">
    有疑问或想了解更多，请咨询：<?php echo C('NET_FWRX');?>
</div>
<div class="con-bg">
    <ul class="container clearfix pt30 pb30">
        <li class="fl w300"><img src="/Public/Home/img/logo.png" border="0" width="300"></li>
        <li class="fr w750 f14 lh30">
        © Copyright 2015 胜杰软件 All Rights Reserved&nbsp;&nbsp;&nbsp;&nbsp;<?php echo C('NET_NAME');?>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo C('WEB_SITE_ICP');?> </br>地址：<?php echo C('NET_ADDR');?>&nbsp;&nbsp;&nbsp;&nbsp;传真：<?php echo C('NET_CHUANZHEN');?>
        </li>   
    </ul>
</div>
<script src="/Public/Home/js/jquery-1.7.2.min.js"></script> 
<script src="/Public/Home/js/scrolltop.js"></script>
</body>
</html>