<?php
namespace app\index\model;

use think\Model;

class Category extends Model {
    public function Item(){
        return $this->hasMany('Item');
    }
}