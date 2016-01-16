<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php echo C('WEB_SITE_TITLE');?></title>
    <meta name="keywords" content="<?php echo C('WEB_SITE_KEYWORD');?>"/>
    <meta name="description" content="<?php echo C('WEB_SITE_DESCRIPTION');?>"/>
    <link rel="stylesheet" href="/Public/Home/css/base.css" />
	<link rel="stylesheet" href="/Public/Home/css/style.css" />
	<script src="/Public/Home/js/jquery-1.7.2.min.js"></script> 
	<script src="/Public/Home/js/scrolltop.js"></script>

</head>
<body>
<div class="clearfix head">
	<div class="main">
		<div class="fl"><img src="/Public/Home/img/logo.png" border="" alt=""></div>
		<ul class="fr head_r mt30">
			<li><a onclick="var strHref=window.location.href;this.style.behavior='url(#default#homepage)';this.setHomePage('13552222336');" href="#"><?php echo (L("T_S_H")); ?></a></li><li>|</li>
			<li><a href="javascript:window.external.addFavorite(window.location.href,'<?php echo C('WEB_SITE_TITLE');?>')"><?php echo (L("T_A_C")); ?></a></li><li>|</li>
			<li><a href="?l=zh-cn" class="red">中文版</a></li><li>|</li>
			<li><a href="?l=en-us" class="red">English</a></li>
		</ul>
	</div>
</div>
<div class="clearfix nav">
	<ul>
		<li><a href="/"><?php echo (L("T_HOME")); ?></a></li><li>|</li>
		<li><a href="/Index/about/id/1.html"><?php echo (L("T_ABOUT")); ?></a></li><li>|</li>
		<li><a href="/Index/news.html"><?php echo (L("T_NEWS")); ?></a></li><li>|</li>
		<li><a href="/Index/pro.html"><?php echo (L("T_PRODUCT")); ?></a></li><li>|</li>
		<li><a href="/Index/support/id/2.html"><?php echo (L("T_TECHNICAL_SUPPORT")); ?></a></li><li>|</li>
		<li><a href="/Index/cases.html"><?php echo (L("T_CASE")); ?></a></li><li>|</li>
		<li><a href="/Index/about/id/7.html"><?php echo (L("T_SALE")); ?></a></li><li>|</li>
		<li><a href="/Index/about/id/8.html"><?php echo (L("T_CONRACT_US")); ?></a></li>
	</ul>
</div>


<div class="main clearfix pt15">	 
	 	<div class="fl w700">
	 	    <div class="clearfix mb20 f12"><?php echo (L("T_YPP")); ?>: <?php echo (L("T_HOME")); ?> >> <?php if(empty($id)): echo (L("T_NEWS")); else: echo (L("T_NEWS")); ?> >> <?php echo (news_list_type($id)); endif; ?></div>
	 		<div class="col-title"> <?php if(empty($id)): echo (L("T_NEWS")); else: echo (news_list_type($id)); endif; ?></div>
            <ul class="news_list pt10 pb10">
                <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li class="clearfix"><a href="/Index/Ndef/id/<?php echo ($vo["id"]); ?>.html" target="_blank" class="fl" title="<?php echo ($vo["title"]); ?>"><?php echo ($vo["title"]); ?></a><font><?php echo ($vo["create_time"]); ?></font></li><?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
             <div class="page">
            <?php echo ($page); ?>
            </div>
	 	</div>
        <div class="fr w290 pr">
	 	    <div class="a-m-r"><?php echo (L("T_NEWS")); ?></div>
	 		<div class="w250 w-a-bj pt70 ml10 p10">
	 		   <ul class="about-meun pt5 mb10 f12">
	 		        <?php if(is_array(C("NEWS_LIST_TYPE"))): $i = 0; $__LIST__ = C("NEWS_LIST_TYPE");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newsType): $mod = ($i % 2 );++$i;?><li><a href="/Index/News/pid/<?php echo ($key); ?>.html"><?php echo ($newsType); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
	 		   </ul>
	 		                  <img src="/Public/Home/img/contact.jpg" border="0"  width="250"/>
	 		   <img src="/Public/Home/img/contact1.gif" border="0"  width="250"/>
	 		   <div class="lh30 pt10 f12">
				地址：<?php echo C('NET_ADD');?><br>
				邮编：<?php echo C('NET_YOUPIAN');?><br>
				电话：<?php echo C('NET_ZUOJI');?><br>
				传真：<?php echo C('NET_CHUANZHEN');?><br>
				<?php echo C('NET_LIANXIREN');?>：<?php echo C('NET_LXRDH');?><br>
				服务热线：<?php echo C('NET_FWRX');?><br>
				网址：<?php echo C('NET_URL');?><br>
				E-mial:<?php echo C('NET_MAIL');?>
			    </div>
	 		</div>
	 	</div>  
</div>

<div class="footer pt10 pb10 tc lh30 mt10"><span style="color:#fff;"><?php echo (L("T_LINK")); ?>：</span><?php if(is_array($linksList)): $i = 0; $__LIST__ = $linksList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="http://<?php echo ($vo["url"]); ?>" target="_blank" title="<?php echo ($vo["title"]); ?>"><?php echo ($vo["title"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?><br><?php echo C('NET_NAME');?>&nbsp;&nbsp;电话：<?php echo C('NET_ZUOJI');?>&nbsp;&nbsp;技术支持：<a href="http://www.jz07.cn" target="_blank" title="蒋文书个人博客">蒋文书个人博客</a>
</div>
</body>
</html>