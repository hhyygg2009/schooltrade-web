<?php


namespace app\index\model;


use think\Model;

class State extends Model
{
    public function item(){
        $this->hasMany('item');
    }
}