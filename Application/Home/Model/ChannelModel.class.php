<?php
/**
 * Created by JetBrains PhpStorm.
 * User: 蒋文书
 * Date: 14-12-27
 * Time: 下午8:50
 * To change this template use File | Settings | File Templates.
 */

namespace Home\Model;
use Think\Model;

class ChannelModel extends Model {
    

    /**
     * 导航
     * @return $parent 分类ID
     * @author 麦当苗儿 <zuojiazi@vip.qq.com>
     */
    public function getNav( $parent = 0){
  
        return  $this->where('parent='.$parent.' and isnav=1 and status=1')->order('sort asc, id desc')->select();
    }

    /**
     * 获取信息
     * @param int $classId ID
     * @return array 信息
     */
    public function getInfo($classId){

        return $this->where('id='.$classId)->find();
    }
    /**
	 * 获取指定分类子分类ID
	 * @param  string $cate 分类ID
	 * @return string       id列表
	 * @author 麦当苗儿 <zuojiazi@vip.qq.com>
	 */
	public function getChildrenId($cate){
		$category = M('Channel')->where('parent='.$cate)->select();
		$ids = array();
		foreach ($category as $key => $value) {
			$ids[] = $value['id'];
		}
		return implode(',', $ids);
	}

}
 