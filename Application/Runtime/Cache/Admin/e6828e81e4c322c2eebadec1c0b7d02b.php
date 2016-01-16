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
  <div class="place">
    <span>位置：</span>
    <ul class="placeul">
      <li><a href="#">首页</a></li>
      <li><a href="#">表单</a></li>
    </ul>
  </div>

  <div class="formbody">

    <div class="formtitle"><span><?php echo ($info['id']?'编辑':'新增'); ?>菜单</span></div>
    <form action="<?php echo U('edit');?>" method="post" class="from_tab">
      <ul class="forminfo">
        <li><label>上级</label>
              <div class="vocation">
                <select class="dfselect" name="class">
                   <?php if(is_array(C("TYPE_LIST"))): $i = 0; $__LIST__ = C("TYPE_LIST");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?><option value="<?php echo ($key); ?>" <?php if($info['class'] == $key): ?>selected<?php endif; ?> ><?php echo ($list); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                </select>
              </div>
        </li>
        <li>
          <label>名称:</label>
          <input name="title" type="text" class="dfinput" value="<?php echo ($info["title"]); ?>" /></li>
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