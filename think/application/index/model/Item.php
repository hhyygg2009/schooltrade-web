<?php
namespace app\index\model;



use think\Model;

class Item extends Model{
    public function category(){
        return $this->belongsTo('Category');
    }

    public function user()  {
        return $this->belongsTo('User');
    }

    public function state(){
        return $this->belongsTo('State');
    }

    public function conditions(){
        return $this->belongsTo('Conditions');
    }

}
