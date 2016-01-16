<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
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
    <div class="formtitle"><span><?php echo ($info['id']?'编辑':'新增'); ?>模型</span></div>
                    <form class="form-horizontal" form action="<?php echo U('Edit');?>" method="post">

      <ul class="forminfo">
        <li><label>模板名称</label><input type="text" name="name" class="dfinput"value="<?php echo ($info["name"]); ?>"></li>
        <li><label>模板前缀</label><input type="text" name="channel" class="dfinput" value="<?php echo ($info["channel"]); ?>"></li>
        <li><label>是否开启</label><cite><input type="radio" name="status" value="1" <?php if(($info['status'] == 1)): ?>checked="checked"<?php endif; ?>> 开启&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="status" value="0" <?php if(($info['status'] == 0)): ?>checked="checked"<?php endif; ?>> 关闭</cite></li>
        <li><label>序</label><input type="text" name="sort" class="dfinput"value="<?php echo ($info["sort"]); ?>"></li>
        <li><label>&nbsp;</label><input type="hidden" name="id" value="<?php echo ($info["id"]); ?>"><button class="btn btn-primary" type="submit">保存</button></li>
      </ul>
   </form>
    </div>
</body>
</html>