<?php
namespace app\admin\controller;
use think\Controller;

class Category extends Controller
{
    private $obj;

	public function _initialize(){
		$this->obj = model('Category');
	}

    public function index()
    {
    	$parentId = input('get.parent_id',0,'intval');
    	$categorys = $this->obj->getFirstCategorys($parentId);    	
        return $this->fetch('',
        	[
        		'categorys' => $categorys
        	]
    	);
    }

    public function add()
    {	
    	$categorys = $this->obj->getNormalFirstCategory();
        return $this->fetch('',
        	[
        		'categorys' => $categorys
      		]
    	);
    }

    public function save()
    {
        //判断是否POST提交
		if (!request()->isPost()) {
			$this->error('请求失败');
		}

        //接受数据
        $data = input('post.');       
       
        //$data数据验证
        $validate = validate('Category');
        if (!$validate->scene('add')->check($data)) {
       		$this->error($validate->getError());
        }

        if (!empty($data['id'])) {
        	return $this->update($data);
        }

		//把$data数据提交给model
		$res = $this->obj->add($data);
		if ($res) {
				$this->success('新增成功');
		}else{
				$this->error('新增失败');
		}

    }

    public function edit($id = 0){
    	if(intval($id) < 1){
    		$this->error('参数不合法');
    	}

    	$category = $this->obj->get($id);
    	$categorys = $this->obj->getNormalFirstCategory();
        return $this->fetch('',
        	[
        		'categorys' => $categorys,
        		'category' => $category
      		]
    	);
    }

    public function update($data){
    	$res =  $this->obj->save($data,['id'=>intval($data['id'])]);
    	if ($res) {
    		$this->success('更新成功');
    	}else{
    		$this->error('更新失败');
    	}
    }

    //异步排序
    public function listorder($id,$listorder){
    	$data = [
    		'id' => $id,
    		'listorder' => $listorder
    	];     
        //$data数据验证
        $validate = validate('Category');
        if (!$validate->scene('listorder')->check($data)) {
       		$this->error($validate->getError());
        }
    	$res = $this->obj->save(['listorder'=>$listorder],['id'=>$id]);
    	if($res){
    		$this->result($_SERVER['HTTP_REFERER'], 1, '更新成功');
    	}else{
    		$this->result($_SERVER['HTTP_REFERER'], 0, '更新失败');
    	}
    }

    //修改状态
    public function status(){
    	//接受数据
        $data = input('get.');     
        //$data数据验证
        $validate = validate('Category');
        if (!$validate->scene('status')->check($data)) {
       		$this->error($validate->getError());
        }
        $res = $this->obj->save(['status'=>$data['status']],['id'=>$data['id']]);
        if($res){
    		$this->result($_SERVER['HTTP_REFERER'], 1, '处理成功');
    	}else{
    		$this->result($_SERVER['HTTP_REFERER'], 0, '处理失败');
    	}
    }

    //批量删除
    public function datadel(){
    	//接受数据
        $data = input('post.ids/a');
        $list = array();
        foreach ($data as $k=>$v) {
        	$list[$k]['id'] = $v;
        	$list[$k]['status'] = -1;
        }
        //$data数据验证
        $validate = validate('Category');
        if (!$validate->scene('status')->check($list)) {
       		$this->error($validate->getError());
        }
        $res = $this->obj->saveAll($list);
        if($res){
    		$this->result($_SERVER['HTTP_REFERER'], 1, '处理成功');
    	}else{
    		$this->result($_SERVER['HTTP_REFRER'], 0, '处理失败');
    	}
    }

    public function welcome()
    {
    	return $this->fetch();
    }
}
