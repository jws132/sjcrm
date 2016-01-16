<?php if (!defined('THINK_PATH')) exit();?>  <!DOCTYPE html>
<html lang="en">
<head>
<title>JwsCms内容管理系统</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="/Public/Admin/css/style.css" />
<script src="/Public/Static/js/jquery-1.7.2.min.js"></script> 

</head>
<body>
	
	<div class="place"><span>位置：</span><ul class="placeul"><li><a href="#">首页</a></li><li><a href="#">表单</a></li></ul></div>
    
  <div class="formbody">
    <div class="formtitle"><span><?php echo ($meta_title); ?></span></div>
    <form action="<?php echo U('add');?>" method="post">
	    <ul class="forminfo">
		    <li><label>角色名</label><input type="text" name="name" class="dfinput" value="<?php echo ((isset($info["name"]) && ($info["name"] !== ""))?($info["name"]):''); ?>"><i>标题不能超过30个字符</i></li>
		    <li><label>角色描述</label><input type="text" name="remark"  class="dfinput" value="<?php echo ((isset($info["remark"]) && ($info["remark"] !== ""))?($info["remark"]):''); ?>"><i>多个关键字用,隔开</i></li>
		    <li><label>角色描述</label><cite><input type="radio" name="status" value="1" <?php if(($info['status'] == 1)): ?>checked="checked"<?php endif; ?>> 开启&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="status" value="0" <?php if(($info['status'] == 0)): ?>checked="checked"<?php endif; ?>> 关闭</cite></li>
		    <li><label>&nbsp;</label><input type="hidden" name="id" value="<?php echo ($info["id"]); ?>"><button class="btn btn-primary" type="submit">保存</button></li>
		  </ul>
    </form>
    </div>
</body>
</html>