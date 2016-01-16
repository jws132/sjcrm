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
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">表单</a></li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle"><span><?php echo ($info['id']?'编辑':'新增'); ?>菜单</span></div>
		<form action="<?php echo U('Edit');?>" method="post" class="from_tab">
			<ul class="forminfo">
        <li><label>上级</label>
              <div class="vocation">
                <select class="dfselect" name="pid">
                   <option value="1">顶级菜单</option>
                   <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><option value="<?php echo ($list["id"]); ?>" <?php if($info['pid'] == $list['id']): ?>selected<?php endif; ?> ><?php echo ($list["title"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                </select>
              </div>

        </li>
				<li>
					<label>菜单名:</label>
					<input name="title" type="text" class="dfinput" value="<?php echo ($info["title"]); ?>" /></li>
				<li>
					<label>模块名:</label>
					<input name="name" type="text" class="dfinput" value="<?php echo ($info["name"]); ?>"/><i>控制器</i></li>
        <li>
          <label>方法名:</label>
          <input name="action" type="text" class="dfinput" value="<?php echo ($info["action"]); ?>"/><i>多个方法名用,隔开</i></li>
				<li>
					<label>状态</label>
          <cite>
            <input type="radio" name="status" value="1"  <?php if($info['status'] == 1): ?>checked="checked"<?php endif; ?> > 开启&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="status" value="0" <?php if($info['status'] == 0): ?>checked="checked"<?php endif; ?>> 关闭
          </cite>
        </li>
				<li>
        <li><label>排序</label>
            <input type="text" name="sort" value="<?php echo ($info['sort']?$info['sort']:'10'); ?>" class="dfinput">
        </li>
        <li>
					<label>&nbsp;&nbsp;</label>
          <input type="hidden" name="id" value="<?php echo ($info["id"]); ?>">
					<button class="btn btn-primary" type="submit">保存</button>
				</li>
			</ul>

		</form>
	</div>


</body>
</html>