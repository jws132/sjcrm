<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">

	<head>
		<title>JwsCms内容管理系统</title>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="/Public/Static/js/jquery-1.7.2.min.js" />
		<link href="/Public/Admin/css/style.css" rel="stylesheet" type="text/css" />
		<script src="/Public/Admin/css/cloud.js" type="text/javascript"></script>

		<script language="javascript">
			$(function(){
		    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
			$(window).resize(function(){  
		    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
		    })  
		});
		</script>

	</head>

	<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">

		<div id="mainBody">
			<div id="cloud1" class="cloud"></div>
			<div id="cloud2" class="cloud"></div>
		</div>

		<div class="logintop">
			<span>欢迎登录后台管理界面平台</span>
			<ul>
				<li><a href="/" target="_blank">回首页</a></li>
				<li><a href="#">帮助</a></li>
				<li><a href="#">关于</a></li>
			</ul>
		</div>

		<div class="loginbody">

			<span class="systemlogo"></span>

			<div class="loginbox">
				<form id="loginform" class="form-vertical" action="<?php echo U('Admin/Public/checkLogin');?>" method="post">
					<ul>
						<li><input name="username" type="text" class="loginuser" onclick="JavaScript:this.value=''" /></li>
						<li><input name="password" type="text" class="loginpwd" onclick="JavaScript:this.value=''" /></li>
						<li><input type="submit" class="loginbtn" value="登录" />
							<label>
								<input name="" type="checkbox" value="" checked="checked" />记住密码</label>
							<label><a href="#">忘记密码？</a></label>
						</li>
					</ul>

				</form>
			</div>
		</div>

		<div class="loginbm">版权所有 2013 uimaker.com 仅供学习交流，勿用于任何商业用途</div>

	</body>

</html>