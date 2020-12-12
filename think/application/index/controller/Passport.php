<?php

namespace app\index\controller;

use think\captcha\Captcha;
use think\facade\Cookie;
use app\index\model\User;
use think\Controller;
use think\facade\Session;
use think\process\exception\Faild;


class Passport extends Controller
{


    public function login()
    {
//        var_dump($_POST);
//        var_dump($_COOKIE);
        $this->loginCheck(true, $this);
        if (request()->isPost()) {

            $captcha = new Captcha();
            if (!$captcha->check(input("captcha"))) {
                $this->error("验证码错误");
            } else {
                $username = $_POST['number'];
                $password = $_POST['password'];
               if ( $this->loginAction($username, $password)){
                $this->redirect('trade/my');

               }
            }


        }

        return view();
    }

    public function register()
    {
        //验证码验证码
        $captcha = new Captcha();
        $this->loginCheck(true, $this);
        if (request()->isPost()) {

            if (!$captcha->check(input("captcha"))) {
                $this->error("验证码错误");

            } else {
                $this->reg();
                $this->redirect('passport/login');

            }

        }
//        var_dump($_REQUEST);
        return view();
    }

    public function my()
    {
        $this->loginCheck(false, $this);


    }

    function myprofile(){
        $this->loginCheck(false, $this);

        $user_id=Session::get('userid');



        //绑定用户登录信息
        $user=User::where('id',$user_id)->find();
        $this->assign('user',$user);

        if($this->request->isPost()){
            $data=input("post.");
            if (array_key_exists("oldpassword",$data)&&$data['oldpassword']!=$user["password"]) {
               $this->error('passerr');
//               var_dump($data);
//               var_dump($user);
            }else{

            $user->save($data);
            $this->success("修改成功");
            }
//            }elseif ($data['password']){
//
//            }

        }

        return view();
    }

    //登录操作
    function loginAction($username, $password)
    {
        $user = User::where("username", $username)->find();
//        var_dump($user);
        if ($user != NULL) {
            if ($user->password == $password) {
                Session::set('userid', $user->id);
//                echo 'ok';
                $this->success('成功', 'trade/my');
                return true;

            } else {
                echo 'passerr';
                $this->error('passerr');
                return false;

            }
        } else {
            echo 'nouser';
            $this->error('nouser');
            return false;
        }
    }

    //检查是否已经登录
    public static function loginCheck($islogin, $controller)
    {

        if (Session::has('userid')) {
            if ($islogin) {
                //登录会直接跳转到我的首页
                $controller->success('成功', 'Trade/my');
            }
            return true;
        } else {
//            Cookie::init(['prefix' => '', 'expire' => 3600, 'path' => '/']);
            if (!$islogin)
                //跳转到登录页面
                $controller->error('需要登录', 'passport/login');
            return false;
        }
    }

    function reg()
    {
        $user = new User();
        $user->username = $_POST['username'];
        $user->password = $_POST['password'];
        $user->phone = $_POST['phonenum'];
        $user->sex = $_POST['sex'];
        $user->save();

    }

    function logout(){
        Session::delete('userid');
        return redirect('passport/login');
    }


}
