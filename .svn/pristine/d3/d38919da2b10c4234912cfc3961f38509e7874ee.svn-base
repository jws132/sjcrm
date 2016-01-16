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
       <div class="clearfix mb20 f12"><?php echo (L("T_YPP")); ?>:<?php echo (L("T_HOME")); ?> >> <?php echo (L("T_PRODUCT")); ?> >> <?php echo (pro_list_type($info["type"])); ?> >> <?php echo (pro_list_pid($info["pid"])); ?></div>
	   	<dl class="meun" style="height:700px;">
		<?php if(is_array(C("PRO_LIST_TYPE"))): $k = 0; $__LIST__ = C("PRO_LIST_TYPE");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newsType): $mod = ($k % 2 );++$k;?><dt><?php echo ($newsType); ?></dt>
			  <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$l): $mod = ($i % 2 );++$i; if($l['type'] == $k): ?><dd><a href="/Index/pro/type/<?php echo ($l["type"]); ?>/pid/<?php echo ($l["id"]); ?>.html"><?php echo ($l["title"]); ?></a></dd><?php endif; endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
	    </dl>
	 	<div class="fr w730">	
	 	    <div class="col-title"><?php if(empty($id)): echo (L("T_PRODUCT")); else: echo (pro_list_pid($info["pid"])); endif; ?></div>
	 	    <div class="clearfix pt20">
	 	    	<div class="w355 fl"><img src="/Uploads/Editor/<?php echo ($info["pic"]); ?>" style="width:100%;" border="0" alt="<?php echo ($info["title"]); ?>"></div>
	 	    	<ul class="w355 fl f12 pro-def">
	 	    		<li><?php echo (L("CPBH")); ?>：<font color="#ff6600"><?php echo ($info["number"]); ?></font></li>
	 	    		<li><?php echo (L("CPNC")); ?>：<font color="#ff6600"><?php echo ($info["title"]); ?></font></li>
	 	    		<li><?php echo (L("GG")); ?>：<font color="#ff6600"><?php echo ($info["spec"]); ?></font></li>
	 	    		<li><?php echo (L("BZ")); ?>：<font color="#ff6600"><?php echo ($info["des"]); ?></font></li>
	 	    		<li><?php echo (L("CPLB")); ?>：<font color="#ff6600"><?php echo (pro_list_type($info["type"])); ?></font></li>
	 	    		<li><?php echo (L("YLCS")); ?>：<font color="#ff6600"><?php echo ($info["view"]); ?></font></li>
	 	    		<li><?php echo (L("DATA")); ?>：<font color="#ff6600"><?php echo (date('Y-m-d',$info["create_time"])); ?></font></li>
	 	    	</ul>
	 	    </div>
	 	    <div class="clearfix col-data mt10 fb">&nbsp;&nbsp;<?php echo (L("PRODES")); ?></div>
            <div class="col-conter"><?php echo (htmlspecialchars_decode($info["conter"])); ?></div>
            <div class="col-conter tc f12" style="border-top:1px solid #ddd;">【<a href='javascript:window.print()' class="black">打印此页</a>】&nbsp;【<a href="javascript:self.close()" class="black">关闭</a>】</div>
	 	</div>
 
</div>

<div class="footer pt10 pb10 tc lh30 mt10"><span style="color:#fff;"><?php echo (L("T_LINK")); ?>：</span><?php if(is_array($linksList)): $i = 0; $__LIST__ = $linksList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="http://<?php echo ($vo["url"]); ?>" target="_blank" title="<?php echo ($vo["title"]); ?>"><?php echo ($vo["title"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?><br><?php echo C('NET_NAME');?>&nbsp;&nbsp;<?php echo (L("TELE")); ?>：<?php echo C('NET_ZUOJI');?>&nbsp;&nbsp;技术支持：<a href="http://www.jz07.cn" target="_blank" title="蒋文书个人博客">蒋文书个人博客</a>
</div>
</body>
</html>