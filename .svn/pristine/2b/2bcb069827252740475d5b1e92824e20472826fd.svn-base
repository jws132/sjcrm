<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="/Public/Home/css/base.css" />
	<link rel="stylesheet" href="/Public/Home/css/style.css" />
	<script src="/Public/Home/js/jquery-1.7.2.min.js"></script> 
	<script src="/Public/Home/js/scrolltop.js"></script>
</head>
<body>
<div class="header">
    <div class="navbar">
    	<a href="/" class="logo"><img src="/Public/Home/img/logo.png" border="0" alt="" width="200" /></a>
    	<ul class="pt10">
    		<li><a href="#">首页</a></li>
    		<li><a href="#">公司简介</a></li>
    		<li><a href="#">解决方案</a></li>
    		<li><a href="#">产品中心</a></li>
    		<li><a href="#">代理产品</a></li>
    		<li class="no"><a href="#">技术服务</a></li>
    	</ul>
    </div>
</div>



<div class="clearfix b-index mb15">
  <ul>
     <li><a href="#"><img src="/Public/Home/img/hd1.jpg" border="0" /></a></li>
     <li><a href="#"><img src="/Public/Home/img/hd2.jpg" border="0" /></a></li>
     <li><a href="#"><img src="/Public/Home/img/hd3.jpg" border="0" /></a></li>
     <li><a href="#"><img src="/Public/Home/img/hd4.jpg" border="0" /></a></li>
     <li><a href="#"><img src="/Public/Home/img/hd5.jpg" border="0" /></a></li>
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
    	<div class="fl w235 ml20"><h3><?php echo (news_list_type(L("T_ID_1"))); ?></h3>
    	    <div class="d-s-r fl">
		    	<img src="/Public/Home/img/index_01.png" border="0" class="fl"/>
		    	<ul class="fl mt5 h-list">
		    	    <?php if(is_array($newsList)): $i = 0; $__LIST__ = $newsList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['pid'] == 1): ?><li><a href="/Index/ndef/id/<?php echo ($vo["id"]); ?>.html" title="<?php echo ($vo["title"]); ?>" target="_blank"><?php echo ($vo["title"]); ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
		    	</ul>
	    	</div>
    	</div>
    	<div class="fl w235 ml10"><h3><?php echo (news_list_type(L("T_ID_2"))); ?></h3>
    	    <div class="d-s-r fl">
		    	<img src="/Public/Home/img/index_02.png" border="0" />
		    	<ul class="fl mt5 h-list">
		    	    <?php if(is_array($newsList)): $i = 0; $__LIST__ = $newsList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['pid'] == 2): ?><li><a href="/Index/ndef/id/<?php echo ($vo["id"]); ?>.html" title="<?php echo ($vo["title"]); ?>" target="_blank"><?php echo ($vo["title"]); ?></a></li><?php endif; endforeach; endif; else: echo "" ;endif; ?>
		    	</ul>
	    	</div>
	    </div>	
    	<div class="fl w235 ml10"><h3><?php echo (L("T_CONRACT_US")); ?></h3>	    	
	    	 <img src="/Public/Home/img/index_03.png" border="0" />
	    	 <div class="fl mt5 lh20 f12">				
	    	    <?php echo (L("ADDRESS")); ?>：<?php echo C('NET_ADD');?><br>
				<?php echo (L("ZIP")); ?>：<?php echo C('NET_YOUPIAN');?><br>
				<?php echo (L("TELE")); ?>：<?php echo C('NET_ZUOJI');?><br>
				<?php echo (L("FAX")); ?>：<?php echo C('NET_CHUANZHEN');?><br>
				<?php echo (L("CONTACT")); ?>：<?php echo C('NET_LXRDH');?><br>
				<?php echo (L("HOT")); ?>：<?php echo C('NET_FWRX');?><br>
				<?php echo (L("NET")); ?>：<?php echo C('NET_URL');?><br>
				E-mial：<?php echo C('NET_MAIL');?>
             </div>
    	</div>
    </div>
</div>




<div class="footer pt10 pb10 tc lh30 mt10"><span style="color:#fff;"><?php echo (L("T_LINK")); ?>：</span><?php if(is_array($linksList)): $i = 0; $__LIST__ = $linksList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="http://<?php echo ($vo["url"]); ?>" target="_blank" title="<?php echo ($vo["title"]); ?>"><?php echo ($vo["title"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?><br><?php echo C('NET_NAME');?>&nbsp;&nbsp;<?php echo (L("TELE")); ?>：<?php echo C('NET_ZUOJI');?>&nbsp;&nbsp;技术支持：<a href="http://www.jz07.cn" target="_blank" title="蒋文书个人博客">蒋文书个人博客</a>
</div>
</body>
</html>