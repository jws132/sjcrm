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
    <li><a href="#">后台首页</a></li>
    <li><a href="#">角色管理</a></li>
    <li><a href="#">权限设置</a></li>
    </ul>
    </div>
 <form action="<?php echo U('role');?>" method="post" id="addRole">   
    <div class="rightinfo">
    
    <div class="tools">
    
      <ul class="toolbar">
        <li onclick = "addRole();"><span><img src="/Public/Admin/img/t01.png" /></span>保存权限</li>
      </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>


     <table class="tablelist">
          <thead>
            <tr>
              <th width="200">菜单</th>
              <th width="200">方法</th>
              <th>功能</th>
            </tr>
          </thead>
          <tbody>
            <?php if(is_array($menus)): $i = 0; $__LIST__ = $menus;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
              <td><input type="checkbox" name="role[]" value="<?php echo ($vo["id"]); ?>_2" onclick="checkAll(this,'purviewid[]')" <?php if($vo['access']): ?>checked="checked"<?php endif; ?> >&nbsp;<?php echo ($vo["title"]); ?></td>
              <td></td>
              <td></td>
            </tr>
             <?php if(is_array($vo["child"])): $i = 0; $__LIST__ = $vo["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$c): $mod = ($i % 2 );++$i;?><tr>
                  <td></td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="role[]" value="<?php echo ($c["id"]); ?>_3" onclick="checkAll(this,'purviewid[]')" <?php if($c['access']): ?>checked="checked"<?php endif; ?>>&nbsp;<?php echo ($c["title"]); ?></td>
                  <td></td>
                </tr>
                <?php if(is_array($c["child"])): $i = 0; $__LIST__ = $c["child"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$f): $mod = ($i % 2 );++$i;?><tr>
                        <td></td>
                       <td></td>
                      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="role[]" value="<?php echo ($f["id"]); ?>_3" onclick="checkAll(this,'purviewid[]')" <?php if($f['access']): ?>checked="checked"<?php endif; ?>>&nbsp;<?php echo ($f["title"]); ?></td>
                    </tr><?php endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; endforeach; endif; else: echo "" ;endif; ?>
          </tbody>
        </table>
       <input type="hidden" name="role_id" value="<?php echo ($role_id); ?>">
       <input type="hidden" name="role['node_id']" value="1_1" >

    </div>
    </form>
  <script type="text/javascript">
  function addRole(){
    document.getElementById("addRole").submit();
  }
    $('.tablelist tbody tr:odd').addClass('odd');
    </script>
</body>
</html>