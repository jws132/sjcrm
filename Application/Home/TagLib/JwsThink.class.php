<?php
// +----------------------------------------------------------------------
// | CoreThink [ Simple Efficient Excellent ]
// +----------------------------------------------------------------------
// | Copyright (c) 2014 http://www.corethink.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: jry <598821125@qq.com> <http://www.corethink.cn>
// +----------------------------------------------------------------------
namespace Home\TagLib;
use Think\Template\TagLib;
/**
 * 标签库
 * @author jry <598821125@qq.com>
 */
class JwsThink extends TagLib{
    /**
     * 定义标签列表
     * @author jry <598821125@qq.com>
     */
    protected $tags = array(
        'nav'    => array('attr' => 'name,parent', 'close' => 1), //面包屑导航列表
        'article' => array('attr' => 'name,pid,group', 'close' => 1), //栏目分类列表
        'comment_list'  => array('attr' => 'name,table,group,data_id', 'close' => 1), //评论列表
        'document_list' => array('attr' => 'name,cid,limit,order', 'close' => 1), //文档列表
        'sql_query'     => array('attr' => 'sql,result', 'close' => 0), //SQL查询
    );
	
    /**
     * 导航
     * @author jiangwenshu <jiangwenshu1990@126.com>
     */
    public function _nav($tag, $content){
        $name   = $tag['name'];
        $parent = $tag['parent'] ? : 0;
        $parse  = '<?php ';
        $parse .= '$__NAVLIST__ = D(\'Channel\')->getNav('.$parent.');';
        $parse .= ' ?>';
        $parse .= '<volist name="__NAVLIST__" id="'. $name .'">';
        $parse .= $content;
        $parse .= '</volist>';

        return $parse;
    }	
	
    /**
     * 面包屑导航列表
     * @author jry <598821125@qq.com>
     */
    public function _article($tag, $content){
        $name   = $tag['name'];
        $channel= $tag['channel'];
        $position= $tag['position'];
        $parent= D('channel')->getChildrenId($tag['parent']);
        $where = 'status = 1 ';
        if($parent){
            $where.=' and channel IN('.$parent.')'; 
        }
        if($channel){
             $where.=' and channel = '.$channel;
        }
        if($position){
            $where.=' and position IN('.$position.')'; 
        }

        $parse  = '<?php ';
        $parse .= '$__ARTICLELIST__ = M(\'Article\')->where("'.$where.'")';
        if(!empty($tag['limit'])){
                $parse .= '->limit('.$tag['limit'].')';
        }
        $parse .= '->select();';
        $parse .= '?>';
        $parse .= '<volist name="__ARTICLELIST__" id="'. $name .'">';
        $parse .= $content;
        $parse .= '</volist>';
        return $parse;
    }
    /**
     * 栏目分类列表
     * @author jry <598821125@qq.com>
     */
    public function _category_list($tag, $content){
        $name   = $tag['name'];
        $pid    = $tag['pid'] ? : 0;
        $group  = $tag['group'] ? : 1;
        $parse  = '<?php ';
        $parse .= '$__CATEGORYLIST__ = D(\'Category\')->getCategoryTree('.$pid.', '.$group.');';
        $parse .= ' ?>';
        $parse .= '<volist name="__CATEGORYLIST__" id="'. $name .'">';
        $parse .= $content;
        $parse .= '</volist>';
        return $parse;
    }
    /**
     * 评论列表
     * @author jry <598821125@qq.com>
     */
    public function _comment_list($tag, $content){
        $name    = $tag['name'];
        $table   = $tag['table'] ? : 0; //默认类型为文档评论
        $group   = $tag['group'] ? : 0; //分组
        $data_id = $tag['data_id'];
        $parse   = '<?php ';
        $parse  .= '$map["table"] = array("eq", '.$table.');';
        $parse  .= '$map["group"] = array("eq", '.$group.');';
        $parse  .= '$map["data_id"] = array("eq", '.$data_id.');';
        $parse  .= '$__COMMENT_LIST__ = D(\'PublicComment\')->getCommentList($map);';
        $parse  .= ' ?>';
        $parse  .= '<volist name="__COMMENT_LIST__" id="'. $name .'">';
        $parse  .= $content;
        $parse  .= '</volist>';
        return $parse;
    }
    /**
     * 文档列表
     * @author jry <598821125@qq.com>
     */
    public function _document_list($tag, $content){
        $name   = $tag['name'];
        $cid    = $tag['cid'];
        $limit  = $tag['limit']?:10;
        $parse  = '<?php ';
        $parse .= '$map["status"] = array("eq", "1");';
        $parse .= '$__DOCUMENT_LIST__ = D("Document")->getDocumentList('.$cid.', '.$limit.', "'.$order.'", $map);';
        $parse .= ' ?>';
        $parse .= '<volist name="__DOCUMENT_LIST__" id="'. $name .'">';
        $parse .= $content;
        $parse .= '</volist>';
        return $parse;
    }
    /**
     * SQL查询
     */
    public function _sql_query($tag, $content) {
        $sql       =    $tag['sql'];
        $result    =    !empty($tag['result']) ? $tag['result'] : 'result';
        $parseStr  =    '<?php $'.$result.' = M()->query("'.$sql.'");';
        $parseStr .=    'if($'.$result.'):?>'.$content;
        $parseStr .=    "<?php endif;?>";
        return $parseStr;
    }
}