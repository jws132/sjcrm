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

class ConfigModel extends Model {
    

    /**
     * 获取配置列表
     * @return array 配置数组
     * @author 麦当苗儿 <zuojiazi@vip.qq.com>
     */
    public function lists(){

        $map    = array('status' => 1,'lang'=>'zh-cn');
        $data   = $this->where($map)->field('type,name,value')->select();
        
        $config = array();
        if($data && is_array($data)){
            foreach ($data as $value) {
                $config[$value['name']] = $this->parse($value['type'], $value['value']);
            }
        }
        return $config;
    }


      /**
     * 根据配置类型解析配置
     * @param  integer $type  配置类型
     * @param  string  $value 配置值
     * @author 麦当苗儿 <zuojiazi@vip.qq.com>
     */
    private function parse($type, $value){
        switch ($type) {
            case 3: //解析数组
                $array = preg_split('/[,;\r\n]+/', trim($value, ",;\r\n"));
                if(strpos($value,':')){
                    $value  = array();
                    foreach ($array as $val) {
                        list($k, $v) = explode(':', $val);
                        $value[$k]   = $v;
                    }
                }else{
                    $value =    $array;
                }
                break;
        }
        return $value;
    }


}
 