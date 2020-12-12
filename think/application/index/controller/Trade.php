<?php

namespace app\index\controller;

use app\index\model\Category;
use app\index\model\Conditions;
use app\index\model\User;
use app\index\model\Item;

use think\Controller;
use think\facade\Cookie;
use think\facade\Session;

class Trade extends Controller
{
    public function my()
    {
        $limit=4;
        $curr=1;
        if($this->request->has('page')){
            $curr=input('page');
        }


        Passport::loginCheck(false, $this);

        $user_id = Session::get('userid');
        //绑定用户登录信息
        $user = User::where('id', $user_id)->find();
        $this->assign('user', $user);

        //绑定商品信息
        $item = Item::where('user_id', $user_id)->limit($curr-1,$limit)->select();
//        $item=Item::where('user_id',$user_id)->get(1);
//        $item=Item::with('Category')->where('user_id',$user_id)->select();

//        $item=Item::get(20);
//        var_dump($item);
//        dump($user_id);
//        dump($item);
//        dump($item->user->username);
//        dump($item->Category->name);
        $count=Item::count('id');

        Cookie::init();
        $recent=array();
        if(Cookie::has('recentitem')){
            $recentitem=Cookie::get('recentitem');

        $recent=Item::all($recentitem);
        }

        $this->assign('recent',$recent);

        $this->assign('count',$count);
        $this->assign('curr',$curr);
        $this->assign('items', $item);


        return view();
    }

    public function search()
    {
        $keyword = input("search");
        $curr = 1;
        $limit=8;
        if ($this->request->has('page')) {
            $curr = input('page');
        }
        $this->assign('curr', $curr);

        if ($keyword) {

            $items = Item::whereLike('name', "%" . $keyword . '%')->limit(0,10)->select();

        } else {
            $num=$curr-1;
            $items = Item::limit($num, $limit)->select();
        }


        $this->assign('items', $items);
//        dump($items);

        $count = Item::count('id');
        $this->assign('count', $count);
//        dump($count);

        return view();
    }

    public function release()
    {
        Passport::loginCheck(false, $this);

        $condition= Conditions::select();
        $this->assign('condition',$condition);

        $category=Category::select();
        $this->assign('category',$category);

        if ($this->request->isPost()) {
            $data = input('post.');

            $data['user_id'] = Session::get('userid');
//        dump($data);

//            $pics=preg_split(';',$data['pics']);
//            dump($pics);
            $item = new Item();
            $item->save($data);
            $this->success("发布成功","trade/my");


        }



        return view();
    }

    public function upload()
    {
        $code = 0;
        $msg = 'success';
        $images = '';

        // 获取表单上传文件 例如上传了001.jpg
        $file = request()->file('image');
        // 移动到框架应用根目录/uploads/ 目录下
        $info = $file->move('./uploads');
        if ($info) {
            // 成功上传后 获取上传信息
            // 输出 jpg
//            echo $info->getExtension();
            // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
//            echo $info->getSaveName();
            // 输出 42a79759f284b767dfcb2a0197904287.jpg
//            echo $info->getFilename();
            $images = $info->getSaveName();
        } else {
            // 上传失败获取错误信息
            echo $file->getError();
        }

        $data = ['images' => $images];
        $res = array("code" => $code, 'msg' => $msg, 'data' => $data);
        return json_encode($res);

    }

//    public function multiupload(){
//        // 获取表单上传文件
//        $files = request()->file('image');
//        $code=0;
//        $msg='success';
//        $images=[];
//
//        $i=0;
//
//        foreach($files as $file){
//            // 移动到框架应用根目录/uploads/ 目录下
//            $info = $file->move( '../uploads');
//            if($info){
//                // 成功上传后 获取上传信息
//                // 输出 jpg
////                echo $info->getExtension();
//                // 输出 42a79759f284b767dfcb2a0197904287.jpg
////                echo $info->getFilename();
//                $images[$i++]=$info->getFilename();
//            }else{
//                // 上传失败获取错误信息
////                echo $file->getError();
//                $msg=$file->getError();
//            }
//        }
//        $data=[images];
//        $res= array("code"=>$code,'msg'=>$msg,'data'=>$data);
//        return json_encode($res);
//    }

    public function up()
    {
        return view('trade/up');
    }

    public function detail()
    {
        if ($this->request->has('id')) {
            $id = input('id');

            Cookie::init();

            $recentitem=array();
            if(Cookie::has('recentitem')){
                $recentitem=Cookie::get('recentitem');
            }
            array_push($recentitem,$id);
            Cookie::set('recentitem',$recentitem);

            $this->assign('recent',$recentitem);

            $item = Item::where('id', $id)->find();
            $this->assign('item', $item);
            return view();

        }
        return null;
    }

    public function delete(){
        $id=input('id');
        Item::where('id',$id)->delete();
        $this->success('删除成功');
        redirect('my');

    }

    public function edit(){
        $condition= Conditions::select();
        $this->assign('condition',$condition);

        $category=Category::select();
        $this->assign('category',$category);


        $id=input('id');
        $item=Item::where('id',$id)->find();
        $this->assign('item',$item);

        if ($this->request->isPost()) {
            $data = input('post.');

            $data['user_id'] = Session::get('user_id');
//        dump($data);

//            $pics=preg_split(';',$data['pics']);
//            dump($pics);
            $item = new Item();
            $item->save($data);

        }

        return view();



    }
    public function on(){
        $id=input('id');
        $item=Item::where('id',$id)->find();
        $stat=!$item->state_id;
        $data=['state_id'=>$stat];
        $item->save($data);

        return redirect('my');
    }
}