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
  <div class="rightinfo">
  <ul class="forminfo">
                    <form class="form-horizontal" form action="<?php echo U('EditField');?>" method="post">
                                    <li><label>字段名</label>
                                        <?php if($info['issystem'] == 2): ?><input type="text" name="name" class="dfinput" value="<?php echo ((isset($info["field"]) && ($info["field"] !== ""))?($info["field"]):''); ?>"><i>（请输入字段名 英文字母开头，长度不超过30）</i>
                                               <?php else: ?>
                                                <input type="text" name="field" value="<?php echo ($info["field"]); ?>" class="dfinput" disabled><?php endif; ?>
                                            </li>
                                     <li><label>字段名称</label><input type="text" name="name"  class="dfinput" value="<?php echo ($info["name"]); ?>"></li>
                                     <li><label>数据类型</label>
                                          <?php if($info['issystem'] == 2): ?><div class="vocation">
                                            <select name="type" class="dfselect" >
                                              <option value="">----请选择----</option>
                                              <?php $_result=get_attribute_type();if(is_array($_result)): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$type): $mod = ($i % 2 );++$i;?><option value="<?php echo ($key); ?>" role="<?php echo ($type[1]); ?>" <?php if($info['type'] == $key): ?>selected="selected"<?php endif; ?> ><?php echo ($type[0]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                                            </select>
                                            </div>
                                            <?php else: ?>
                                                <input type="text"  class="dfinput" name="type" value="<?php echo get_attribute_type($info['type']);?>" disabled><?php endif; ?>

                                        </li>
                                   <li><label>文本宽度</label><input type="text"  class="dfinput" name="text_size" value="<?php echo ($info["text_size"]); ?>"><i>（编辑区域的宽度已1至12数字）</i></li>
                                   <li><label>参数</label><textarea name="extra" style="height:50px;"  class="dfinput"><?php echo ($info["extra"]); ?></textarea><i>（布尔、枚举、多选字段类型的定义数据）</i></li>
                                    <li><label>帮助信息</label><input type="text"  class="dfinput" name="help" value="<?php echo ($info["help"]); ?>"> </li>
                                    <li><label>排序</label><input type="text"  class="dfinput" name="sort" value="<?php echo ($info["sort"]); ?>"> </li>
                               <div class="form-actions">
                                <input type="hidden" name="field_id" value="<?php echo ($info["field_id"]); ?>">
                               <button class="btn btn-primary" type="submit">保存</button>
                           </div>
                     </form>
                     </div>
    </div>
</body>
</html>