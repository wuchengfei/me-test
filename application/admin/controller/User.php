<?php
namespace app\admin\controller;
use think\Controller;

class User extends Controller
{
    public function index()
    {
        return $this->fetch();
    }

    public function add()
    {
        return $this->fetch();
    }

    public function welcome(){
    	return $this->fetch();
    }
}
