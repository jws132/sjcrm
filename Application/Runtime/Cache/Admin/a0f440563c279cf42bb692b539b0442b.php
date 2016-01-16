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

    <div class="formtitle"><span>修改密码</span></div>
    <form action="<?php echo U('PassWord');?>" method="post" class="from_tab">
      <ul class="forminfo">
        <li>
          <label>用户名:</label>
          <span style="line-height:32px; height:32px;"><?php echo ($info["username"]); ?></span></li>
        <li>
          <label>原始密码:</label>
          <input name="yspass" type="password" class="dfinput" /></li>
        <li>
          <label>新密码:</label>
          <input name="newpass" type="password" class="dfinput"  /></li>
        <li>
          <label>确认密码:</label>
          <input name="password" type="password" class="dfinput" /></li>
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