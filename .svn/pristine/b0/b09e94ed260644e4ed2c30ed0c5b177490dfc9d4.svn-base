<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE html>
<html>
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
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
      <ul class="toolbar">
        <li><a href="/admin.php/Menu/edit" ><span><img src="/Public/Admin/img/t01.png" /></span>添加</a></li>
        <li><span><img src="/Public/Admin/img/t03.png" /></span>删除</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
     <table class="tablelist">
          <thead>
            <tr>
              <th width="92">ID</th>
              <th>菜单</th>
              <th>模块</th>
              <th>方法</th>
              <th width="150">状态</th>
              <th width="200">操作</th>
            </tr>
          </thead>
          <tbody>
            <?php if(is_array($menus)): $i = 0; $__LIST__ = $menus;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
              <td  width="92" align='center'><?php echo ($vo["id"]); ?></td>
              <td><input type="text"  name="sort[]"  size="2" class="input-sort" value="<?php echo ($vo["sort"]); ?>" />&nbsp;<?php echo ($vo["title"]); ?></td>
              <td align='center'><?php echo ($vo["name"]); ?></td>
              <td align='center'><?php echo ($vo["action"]); ?></td>
              <td align="center"><?php if($vo['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
              <td align="center"><a href="/admin.php/Menu/edit/id/<?php echo ($vo["id"]); ?>" title="编辑" class="edit"></a><a href="/admin.php/Menu/del/id/<?php echo ($vo["id"]); ?>" title="删除" class="del"></a></td>
            </tr>
             <?php if(is_array($vo["child"])): $i = 0; $__LIST__ = $vo["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$c): $mod = ($i % 2 );++$i;?><tr>
                  <td  width="92" align='center'><?php echo ($c["id"]); ?></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  name="sort[]" size="2" class="input-sort" value="<?php echo ($c["sort"]); ?>" />&nbsp;<?php echo ($c["title"]); ?></td>
                  <td align='center'><?php echo ($c["name"]); ?></td>
                  <td align='center'><?php echo ($c["action"]); ?></td>
                  <td align="center"><?php if($c['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
              <td align="center"><a href="/admin.php/Menu/edit/id/<?php echo ($c["id"]); ?>" title="编辑" class="edit"></a><a href="/admin.php/Menu/del/id/<?php echo ($c["id"]); ?>" title="删除" class="del"></a></td>
                </tr><?php endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
          </tbody>
        </table>
  
    </div>
  <script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
    </script>
</body>
</html>