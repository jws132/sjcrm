<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
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
        <li><a href="<?php echo U('edit');?>" ><span><img src="/Public/Admin/img/t01.png" /></span>添加</a></li>
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
              <th width="80">排序</th>
              <th>标题</th>
              <th>访问量</th>
              <th width="150">状态</th>
              <th width="150">用户</th>
              <th width="150">时间</th>
              <th width="200">操作</th>
            </tr>
          </thead>
          <tbody>
            <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                <td><?php echo ($vo["id"]); ?></td>
                <td><input type="text"  name="sort[]"  size="2" class="input-sort" value="<?php echo ($vo["sort"]); ?>" /></td>
                <td ><font color="#1daeef">[<?php echo ($vo["name"]); ?>]</font><?php echo ($vo["title"]); ?></td>
                <td align='center'><?php echo ($vo["hits"]); ?></td>
                <td align="center"><?php if($vo['status']): ?>开启<?php else: ?>关闭<?php endif; ?></td>
                <td align="center"><?php echo ($vo["username"]); ?></td>
                <td align="center"><?php echo (date('Y-m-d',$vo["createtime"])); ?></td>
                <td align="center"><a href="/index.php/Admin/Product/edit/id/<?php echo ($vo["id"]); ?>" title="编辑" class="edit"></a><a href="/index.php/Admin/Product/del/id/<?php echo ($vo["id"]); ?>" title="删除" class="del"></a></td>
              </tr><?php endforeach; endif; else: echo "" ;endif; ?>
          </tbody>
        </table>
  
    </div>
  <script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
    </script>
</body>
</html>