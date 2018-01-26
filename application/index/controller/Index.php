<?php
namespace app\index\controller;
use think\Controller;

class Index extends Controller
{
    public function index()
    {
        return $this->fetch();
    }

    public function test(){

    	\PHPMailer\Email::send('363141511@qq.com','这只是个测试','Hello phpemailer','/test.png');
        return "<script>alert('邮件发送成功！')</script>";
    	//return $this->fetch();
    }

    public function map(){
    	//\Map::getLngLat('北京市朝阳区超级蜂巢');
    	return \Map::staticimage('山西省临汾市高铁站');
    }
}
