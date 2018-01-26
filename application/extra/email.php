<?php 
/*
*邮件相关配置
*/
return [
	'CharSet' => 'UTF-8',//设置邮件的字符编码，这很重要，不然中文乱码
	'SMTPAuth' => true, //开启认证
	'SMTPSecure' => "ssl",// 使用ssl协议方式
	'Port' => 465,//端口号 163邮箱的ssl协议方式端口号是465/994
	'Host' => "smtp.163.com",// 发送方的SMTP服务器地址
	'Username' => "13620680515@163.com",//发送方的邮箱用户名
	'Password' => 'qqq112233',//发送方的邮箱密码，注意用163邮箱这里填写的是“客户端授权密码”而不是邮箱的登录密码！
	'AddReplyTo_address' => '13620680515@163.com',// 设置回复的邮箱地址
	'AddReplyTo_name' => 'Wade',// 设置回复人名称
	'From' => '13620680515@163.com',//发件人地址
	'FromName' => "Thinkshop(TP5商城学习)",//发件人名称
	'AltBody' => '要查看该消息，请使用HTML兼容的电子邮件查看器！',//当邮件不支持html时备用显示，可以省略
	'WordWrap' => 80, // 设置每行字符串的长度
];