<?php
namespace app\index\controller;

use think\facade\Cookie;
use app\index\model\passport\User;
use think\Controller;

class Passport extends Controller{
    public function login(){
//        var_dump($_POST);
//        var_dump($_COOKIE);

        if(Cookie::has('username')){
            $this->success('成功','item/my');

        }else{
            Cookie::init(['prefix' => '', 'expire' => 3600, 'path' => '/']);
        }


        if (request()->isPost()){
            $username=$_POST['number'];
            $password=$_POST['password'];



            $this->logincheck($username,$password);

        }
        return view();
    }
    public function register(){
        return view();
    }
    public function my(){
        return view();
    }

    function logincheck($username,$password){
        $user=User::where("username",'=',$username)->find();
//        var_dump($user);
        if($user!=NULL){
            if($user->username==$password){
                Cookie::set('username',$username,3600);
                echo 'ok';
                $this->success('成功','item/my');

            }else {
                echo 'passerr';
                $this->error('passerr');

            }
        }else {
            echo 'nouser';
            $this->error('nouser');
        }
    }
}
