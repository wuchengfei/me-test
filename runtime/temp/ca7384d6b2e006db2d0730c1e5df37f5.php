<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:74:"D:\phpStudy\WWW\Thinkshop\public/../application/index\view\user\login.html";i:1516087270;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>登陆</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="/static/index/css/iconfont/iconfont.css" rel="stylesheet"/>
    <link href="/static/index/css/common.css" rel="stylesheet"/>
    <link href="/static/index/css/login.css" rel="stylesheet"/>
</head>
<body>
<!--头部-->
    <div class="login-header">
        <div class="wrapper">
            <a href="" class="logo">
                <img src="/static/index/img/logo3.png" alt="" />
            </a>
            <div class="zp">
                <span class="ico"></span>
                <div>正品保障</div>
            </div>
        </div>
    </div>
    <div class="login-main-wrap">
        <div class="login-main wrapper">
            <div class="login-box">
                <form action="" method="">
                    <div class="box-hd">
                        <span class="tit">用户登录</span>
                        <a href="sign-in.html">注册新账号</a>
                    </div>
                    <label class="txtin-box">
                        <span class="ico user"></span>
                        <input class="txtin" type="text" name="" placeholder="用户名/手机" />
                    </label>
                    <label class="txtin-box">
                        <span class="ico pwd"></span>
                        <input class="txtin" type="password" name="" placeholder="密码" />
                    </label>
                    <div class="clearfix tool">
                        <label class="check"><input type="checkbox" id="" />自动登录</label>
                        <a class="find" href="forgot-pwd.html">忘记密码？</a>
                    </div>
                    <input class="tj" type="submit" value="登&ensp;录" />
                    <div class="other-way clearfix">
                        <a class="item first" href="">
                            <img src="/static/index/img/login/weixin.jpg" alt="" class="ico" />
                            <span class="label">微信</span>
                        </a>
                        <a class="item" href="">
                            <img src="/static/index/img/login/qq.jpg" alt="" class="ico" />
                            <span class="label">微信</span>
                        </a>
                        <a class="item" href="">
                            <img src="/static/index/img/login/sina.jpg" alt="" class="ico" />
                            <span class="label">微信</span>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="login-footer">
        安徽XXX网络科技有限公司 版权所有 Copyright © 2016-2018   备案号：皖ICP备123456789
        <div class="authentication">
            <a href=""><img src="/static/index/uploads/35.jpg" alt="" /></a>
            <a href=""><img src="/static/index/uploads/36.jpg" alt="" /></a>
            <a href=""><img src="/static/index/uploads/37.jpg" alt="" /></a>
            <a href=""><img src="/static/index/uploads/38.jpg" alt="" /></a>
        </div>
    </div>
</body>
<script src="/static/index/js/jquery.js"></script>
<link rel="stylesheet" href="/static/index/js/icheck/style.css"/>
<script src="/static/index/js/icheck/icheck.min.js"></script>
<script src="/static/index/js/global.js"></script>
<script>
    $('.check input').iCheck({
            checkboxClass: 'sty1-checkbox'
        });
</script>
</html>