<?php
namespace app\admin\validate;
use think\Validate;

class Category extends Validate{
	protected $rule = [
		['name','require|max:10','栏目名不能为空|分类名不能超过10个字符'],
		['listorder','number','排序内容只能为数字'],
		['parent_id','number'],
		['id','number','非法ID'],
		['status','number|in:-1,0,1','状态必须为数字|状态范围不合法']
	];

	/*
	*场景设置
	*/
	protected $scene = [
		'add' => ['name','list_order','parent_id','id'], //添加
		'listorder' => ['id','listorder'], //排序		
		'status' => ['id','status'],//状态
	];
}