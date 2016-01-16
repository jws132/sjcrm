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

    <div class="formtitle"><span>个人资料</span></div>
    <form action="<?php echo U('userData');?>" method="post" class="from_tab">
      <ul class="forminfo">
        <li>
          <label>用户名:</label>
          <span style="line-height:32px; height:32px;"><?php echo ($info["username"]); ?></span></li>
        <li>
          <label>邮箱:</label>
          <input name="email" type="text" class="dfinput"  value="<?php echo ($info["email"]); ?>" /></li>
        <li>
          <label>真实姓名:</label>
          <input name="realname" type="text" class="dfinput" value="<?php echo ($info["realname"]); ?>" /></li>
        <li>
          <label>性别：</label>
          <cite>
            <input type="radio" name="sex" value="1"  <?php if($info['sex'] == 1): ?>checked="checked"<?php endif; ?> > 男&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="sex" value="2"  <?php if($info['sex'] == 2): ?>checked="checked"<?php endif; ?> > 女&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="radio" name="sex" value="0" <?php if($info['sex'] == 0): ?>checked="checked"<?php endif; ?>> 保密
          </cite>
        </li>
        <li>
          <label>联系手机:</label>
          <input name="realname" type="text" class="dfinput" value="<?php echo ($info["mobile"]); ?>" /></li>
        <li>
          <label>联系地址:</label>
          <input name="address" type="text" class="dfinput" value="<?php echo ($info["address"]); ?>" /></li>

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