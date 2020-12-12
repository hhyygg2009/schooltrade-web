<?php


namespace app\index\model;


use think\Model;

class Conditions extends Model
{
    public function item(){
        $this->hasMany('Item');
    }
}