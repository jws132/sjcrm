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
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
      <ul class="toolbar">
        <li class="click"><a href="<?php echo U('Add');?>"><span><img src="/Public/Admin/img/t01.png" /></span>添加</a></li>
        <li><span><img src="/Public/Admin/img/t03.png" /></span>删除</li>
      </ul>
    </div>

          <form action="<?php echo U('Sort');?>" method="post">
            <table class="tablelist">
                  <thead>
                    <tr>
                      <th>排序</th>
                      <th>字段名</th>
                      <th>别名</th>
                      <th>字段类型</th>
                      <th>主表</th>
                      <th>状态</th>
                      <th>操作</th>
                    </tr>
                  </thead>
              <tbody>
                 <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['status'] == 1): ?><tr>
                      <td><input type="text" name="sort[<?php echo ($vo["field_id"]); ?>]" value="<?php echo ($vo["sort"]); ?>" class="file_sort" /></td>
                      <td><?php echo ($vo["field"]); ?></td>
                      <td><?php echo ($vo["name"]); ?></td>
                      <td>
                        <?php if($vo['type'] == editor): ?>编辑器 
                          <elseif condition="$vo['type'] eq channel_id">栏目
                          <?php else: echo get_attribute_type($vo['type']); endif; ?>
                      </td>
                      <td><?php if($vo['issystem'] == 1): ?><font color="blue">√</font><?php else: ?> <font color="red">╳</font><?php endif; ?></td>
                      <td><span class="badge badge-success">开启<span></td>
                      <td>
                      <a href="<?php echo U('editField',array('id'=>$vo['field_id']));?>">编辑</a>  |
                      <?php if($vo['issystem'] == 1): ?><font color="#ddd">禁用</font><?php else: ?><a href="<?php echo U('Status',array('fieldid'=>$vo['field_id'],'status'=>$vo['status'],issystem=>$vo['issystem']));?>">禁用</a><?php endif; ?>
                      <?php if($vo['issystem'] == 2): ?><a href="<?php echo U('delField',array('id'=>$vo['field_id']));?>">删除</a><?php endif; ?>
                      </td>
                    </tr><?php endif; endforeach; endif; else: echo "" ;endif; ?>
                   <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i; if($vo['status'] == 0): ?><tr>
                      <td><input type="text" name="sort[<?php echo ($vo["field_id"]); ?>]" value="<?php echo ($vo["sort"]); ?>" class="file_sort"  /></td>
                      <td><?php echo ($vo["field"]); ?></td>
                      <td><?php echo ($vo["name"]); ?></td>
                      <td>
                        <?php if($vo['type'] == editor): ?>编辑器 
                          <elseif condition="$vo['type'] eq channel_id">栏目
                          <?php else: echo get_attribute_type($vo['type']); endif; ?>
                      </td>
                      <td><?php if($vo['issystem'] == 1): ?><font color="blue">√</font><?php else: ?> <font color="red">╳</font><?php endif; ?></td>
                      <td><span class="badge">关闭<span></td>
                      <td><a href="<?php echo U('editField',array('id'=>$vo['field_id']));?>">编辑</a> | <a href="<?php echo U('Status',array('fieldid'=>$vo['field_id'],'status'=>$vo['status'],issystem=>$vo['issystem']));?>">启用</a></td>
                      <?php if($vo['issystem'] == 2): ?><a href="<?php echo U('delField',array('id'=>$vo['field_id']));?>">删除</a><?php endif; ?>
                    </tr><?php endif; endforeach; endif; else: echo "" ;endif; ?>
              </tbody>
            </table>
            <div class="form-actions">
              <button class="btn btn-success" type="submit">排序</button>
            </div>
            </form>
  </div>
  <script type="text/javascript">
    $('.tablelist tbody tr:odd').addClass('odd');
    </script>
</body>
</html>