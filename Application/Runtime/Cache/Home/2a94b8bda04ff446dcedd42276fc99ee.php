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

<div class="clearfix b-index mb15">
  <ul>
     <li style=" background:url('/Public/Home/img/ban-1.png') #3083eb no-repeat center top;"><a href="/index.php/Home/article/Content/id/32"></a></li>
     <li style=" background:url('/Public/Home/img/ban-2.png') #9FBBC7 no-repeat center top;"><a href="/index.php/Home/article/Content/id/28"></a></li>
     <li style=" background:url('/Public/Home/img/ban-3.png') #8CC63E no-repeat center top;"><a href="/index.php/Home/article/Content/id/27"></a></li>
  </ul>
   <ol>
      <li class="current"></li>
      <li></li>
      <li></li>
   </ol>
</div>

<div class="pro-list clearfix pt20 pb20">
	<ul>
	    <?php $__ARTICLELIST__ = M('Article')->where("status = 1  and channel IN(36,10,11) and position IN(1)")->limit(8)->select(); if(is_array($__ARTICLELIST__)): $i = 0; $__LIST__ = $__ARTICLELIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li>
	    	<a href="/index.php/Home/article/Content/id/<?php echo ($vo["id"]); ?>" title="<?php echo ($vo["title"]); ?>">
	    	<img src="/Uploads/Images/<?php echo ($vo["img"]); ?>" border="0" height="150" alt="<?php echo ($vo["title"]); ?>"/></a>
			<h4><a href="/index.php/Home/article/Content/id/<?php echo ($vo["id"]); ?>" title="<?php echo ($vo["title"]); ?>"><?php echo ($vo["title"]); ?></a></h4>
			<p><?php echo ($vo["description"]); ?></p>
          </li><?php endforeach; endif; else: echo "" ;endif; ?>
	</ul>
</div>

<div class="con-bg">
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
		  <?php $__ARTICLELIST__ = M('Article')->where("status = 1  and channel = 40")->limit(18)->select(); if(is_array($__ARTICLELIST__)): $i = 0; $__LIST__ = $__ARTICLELIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$kh): $mod = ($i % 2 );++$i;?><li><img src="/Uploads/Images/<?php echo ($kh["img"]); ?>" border="0" height="150" width="150" alt="<?php echo ($kh["title"]); ?>" /></li><?php endforeach; endif; else: echo "" ;endif; ?>
		</ul>

	</div>
</div>

<div class="container pt30 clearfix">
	<div class="fl w550 index_list">
		<h3>新闻中心</h3>
		<ul class="pr30">
		<?php $__ARTICLELIST__ = M('Article')->where("status = 1  and channel IN(38,39)")->limit(7)->select(); if(is_array($__ARTICLELIST__)): $i = 0; $__LIST__ = $__ARTICLELIST__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="/index.php/Home/article/Content/id/<?php echo ($vo["id"]); ?>" target="_blank" title="<?php echo ($vo["title"]); ?>"><?php echo ($vo["title"]); ?></a><span><?php echo (date('Y-m-d',$vo["createtime"])); ?></span></li><?php endforeach; endif; else: echo "" ;endif; ?>
	    </ul>
	</div>
	<div class="fr w550 tc"><img src="/Public/Home/img/new-r.jpg" border="0" /></div>
</div>
<div class="container pt20 clearfix">
	<div class="dotted_line clearfix"></div>
	<div class="fl w650 tc">
	   <img src="/Public/Home/img/new-b.png" border="0" />
	</div>
	<div class="fr w400 tc pb15">
		<h1 style="font-size:30px;" class="pt70 pb50">赶紧申请试用吧？还等什么</h1>
<a href="/" class="btn pt10 pr50 pb10 pl50 ">立即申请试用</a>
	</div>
</div>

<!--百度推广-->

<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5e06781eea22792d959956c3d7c5851f' type='text/javascript'%3E%3C/script%3E"));
</script>


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