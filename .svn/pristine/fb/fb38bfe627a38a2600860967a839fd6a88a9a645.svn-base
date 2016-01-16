<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
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
			<li><a href="#">设为首页</a></li><li>|</li>
			<li><a href="#">加入收藏</a></li><li>|</li>
			<li><a href="/Index/Home/?l=zh-cn" class="red">中文版</a></li><li>|</li>
			<li><a href="/Index/Home/?l=en-us" class="red">English</a></li>
		</ul>
	</div>
</div>
<div class="clearfix nav">
	<ul>
		<li><a href="/"><?php echo (L("T_HOME")); ?></a></li><li>|</li>
		<li><a href="/Index/about/id/<?php echo (L("T_ABOUT_ID")); ?>.html"><?php echo (L("T_ABOUT")); ?></a></li><li>|</li>
		<li><a href="/Index/news/id/<?php echo (L("T_NEWS_ID")); ?>.html"><?php echo (L("T_NEWS")); ?></a></li><li>|</li>
		<li><a href="/Index/pro.html"><?php echo (L("T_PRODUCT")); ?></a></li><li>|</li>
		<li><a href="/Index/support/id/<?php echo (L("T_TECHNICAL_SUPPORT_ID")); ?>.html"><?php echo (L("T_TECHNICAL_SUPPORT")); ?></a></li><li>|</li>
		<li><a href="/Index/cases.html"><?php echo (L("T_CASE")); ?></a></li><li>|</li>
		<li><a href="/Index/about/id/<?php echo (L("T_SALE_ID")); ?>.html"><?php echo (L("T_SALE")); ?></a></li><li>|</li>
		<li><a href="/Index/about/id/<?php echo (L("T_CONRACT_US_ID")); ?>.html"><?php echo (L("T_CONRACT_US")); ?></a></li>
	</ul>
</div>


<div class="clearfix b-index mb15">
  <ul>
     <li><a href="#"><img src="http://www.bnnbr.cn/images/hd4.jpg" border="0" /></a></li>
     <li><a href="#"><img src="http://www.bnnbr.cn/images/hd2.jpg" border="0" /></a></li>
     <li><a href="#"><img src="http://www.bnnbr.cn/images/hd1.jpg" border="0" /></a></li>
  </ul>
   <ol>
      <li class="current"></li>
      <li></li>
      <li></li>
   </ol>
</div>
<div class="main clearfix" style="background-color: #f0f2e7;">
	<dl class="meun">
	<?php if(is_array(C("PRO_LIST_TYPE"))): $k = 0; $__LIST__ = C("PRO_LIST_TYPE");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newsType): $mod = ($k % 2 );++$k;?><dt><?php echo ($newsType); ?></dt>
		  <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$l): $mod = ($i % 2 );++$i; if($l['type'] == $k): ?><dd><a href="/Index/pro/type/<?php echo ($l["type"]); ?>/pid/<?php echo ($l["id"]); ?>.html"><?php echo ($l["title"]); ?></a></dd><?php endif; endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
	</dl>
    <div class="meun_index pt30">
    	<div class="fl w235 ml20"><h3>企业动态</h3>
    	    <div class="d-s-r fl">
		    	<img src="/Public/Home/img/index_01.png" border="0" class="fl"/>
		    	<ul class="fl mt5 h-list">
		    	    <?php if(is_array($newsList)): $i = 0; $__LIST__ = $newsList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['pid'] == 1): ?><li><?php echo ($vo["title"]); ?></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
		    	</ul>
	    	</div>
    	</div>
    	<div class="fl w235 ml10"><h3>企业信息</h3>
    	    <div class="d-s-r fl">
		    	<img src="/Public/Home/img/index_02.png" border="0" />
		    	<ul class="fl mt5 h-list">
		    	    <?php if(is_array($newsList)): $i = 0; $__LIST__ = $newsList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['pid'] == 2): ?><li><?php echo ($vo["title"]); ?></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
		    	</ul>
	    	</div>
	    </div>	
    	<div class="fl w235 ml10"><h3>联系方式</h3>	    	
	    	 <img src="/Public/Home/img/index_03.png" border="0" />
	    	 <div class="fl mt5 lh20">				
	    	    地址：<?php echo C('NET_ADD');?><br>
				邮编：<?php echo C('NET_YOUPIAN');?><br>
				电话：<?php echo C('NET_ZUOJI');?><br>
				传真：<?php echo C('NET_CHUANZHEN');?><br>
				<?php echo C('NET_LIANXIREN');?>：<?php echo C('NET_LXRDH');?><br>
				服务热线：<?php echo C('NET_FWRX');?><br>
				网址：<?php echo C('NET_URL');?><br>
				E-mial：<?php echo C('NET_MAIL');?>
             </div>
    	</div>
    </div>
</div>

<div class="footer pt10 pb10 tc lh30 mt10"><span style="color:#fff;">友情链接：</span><?php if(is_array($linksList)): $i = 0; $__LIST__ = $linksList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="http://<?php echo ($vo["url"]); ?>" target="_blank" title="<?php echo ($vo["title"]); ?>"><?php echo ($vo["title"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?><br><?php echo C('NET_NAME');?> 电话：<?php echo C('NET_ZUOJI');?>
</div>
</body>
</html>