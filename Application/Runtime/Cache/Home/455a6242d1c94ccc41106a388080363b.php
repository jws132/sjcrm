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
        <div class="w290 fl">
	 		<div class="w250 w-a-bj ml10 p10">
	 		                 <a href="/Message/Index.html"><img src="/Public/Home/img/contact.jpg" border="0"  width="250"/></a>
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
	 	<div class="fr w700">
	 		<div class="col-title">留言列表</div>
            <div class="col-conter">
            <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><table cellspacing="0"  width="100%" align="center" cellpaddin="0" class="message-tab mb10">
						<tr>
					    	<td width="11%" align="right">姓名&nbsp;&nbsp;</td>
					      	<td width="25%"><?php echo ($vo["name"]); ?></td>
					      	<td width="8%" align="right">时间&nbsp;&nbsp;</td>
					      	<td width="23%"><?php echo (date('Y-m-d',$vo["create_time"])); ?></td>
				      	</tr>
					 	<tr>
					     	<td width="11%" align="right">主题&nbsp;&nbsp;</td>
					     	<td colspan="3"><?php echo ($vo["title"]); ?></td>
				      	</tr>
					   	<tr>
					    	<td width="11%" align="right">内容&nbsp;&nbsp;</td>
					     	<td colspan="3"><?php echo ($vo["conter"]); ?></td>
				   		</tr>
				   		<?php if(!empty($vo["hf"])): ?><tr>
					    	<td width="11%" align="right"><font color="red">回复内容</font>&nbsp;&nbsp;</td>
					       	<td colspan="3"><font color="red"><?php echo ($vo["hf"]); ?></font></td>
				      	</tr><?php endif; ?>
				</table><?php endforeach; endif; else: echo "" ;endif; ?>
				<div class="page">
	            <?php echo ($page); ?>
	            </div>
            </div>
            <div class="col-title">我要留言</div>
            <div class="col-conter" style="line-height:35px; font-size:12px;">
            <form id="ajaxFrm">
            <span class="clsShow" style="color:red;"></span>
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="m-tab">
	          <tbody>
	            <tr>
	                <td>标题：</td><td colspan="3" ><input name="title" id="title" type="text" size="96" maxlength="255"></td>
	            </tr>
	            <tr>
		            <td>真实姓名：</td><td><input type="text" name="name" id="name" class="contactTex1" size="35"></td>
		            <td>电话：</td><td><input type="text" name="phone" id="phone" size="35" maxlength="50"></td>
	            </tr>
	            <tr>
	                <td>留言内容：</td><td colspan="3" bgcolor="#FFFFFF"><textarea name="conter"  cols="71" rows="4"></textarea></td>
	            </tr>
	            <tr>
	                <td></td><td colspan="3">
	                <input type="hidden" name="status" value="1">
	                <input type="image" id="submit" onClick="onClink(); return false;" style="margin-top:10px;" name="submit" value="留言" src="/Public/Home/img/gb-button.gif">
	                </td>
	            </tr>
	          </tbody>
            </table>
            </form>

            </div>
	 	</div>

</div>
<script type="text/javascript" >

//重载验证码  
function freshVerify() {  
  document.getElementById('verifyImg').src='/index.php/home/message/verify/'+Math.random();  
}  

function onClink(){
   var title=$('#title').val();
   var name=$('#name').val();
   var phone=$('#phone').val();
   if(title==''){
    	$(".clsShow").html("标题不能为空");
    	return false;
   }
   if(name==''){
    	$(".clsShow").html("姓名不能为空");
    	return false;
   }
   if(phone==''){
    	$(".clsShow").html("号码不能为空");
    	return false;
   }
   $.ajax({
        url: '<?php echo U("guestbook");?>', //登录处理页
        type: "POST",
        dataType : 'json',
        data: $("#ajaxFrm").serialize(),
        success: function(data){ 
        	alert(data.status);
	        if(data.status == 1){
	           $(".clsShow").html("操作提示，登录成功！");
	        }else {
	           $(".clsShow").html("操作提示，登录失败！");
	        }
        }  
    })
}

</script>

<div class="footer pt10 pb10 tc lh30 mt10"><span style="color:#fff;"><?php echo (L("T_LINK")); ?>：</span><?php if(is_array($linksList)): $i = 0; $__LIST__ = $linksList;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="http://<?php echo ($vo["url"]); ?>" target="_blank" title="<?php echo ($vo["title"]); ?>"><?php echo ($vo["title"]); ?></a><?php endforeach; endif; else: echo "" ;endif; ?><br><?php echo C('NET_NAME');?>&nbsp;&nbsp;电话：<?php echo C('NET_ZUOJI');?>&nbsp;&nbsp;技术支持：<a href="http://www.jz07.cn" target="_blank" title="蒋文书个人博客">蒋文书个人博客</a>
</div>
</body>
</html>