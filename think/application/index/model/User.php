<?php
namespace app\index\model;

use think\Model;

class User extends Model{
    public function item(){
        $this->hasMany('Item');
    }



}
