<?php
namespace app\admin\controller;
use think\Controller;

class Index extends Controller
{
    public function index()
    {
        return $this->fetch();
    }

    public function welcome(){
    	\phpmailer\Email::send('363141511@qq.cpm','测试邮件','Hello Email');
    	return '123';
    	return $this->fetch();
    }
}
