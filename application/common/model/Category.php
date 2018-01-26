<?php
namespace app\common\model;

use think\Model;

class Category extends Model
{
	protected $autoWriteTimestamp = true;

	public function add($data){
		$data['status'] = 1;
		return $this->save($data);
	}

	public function getNormalFirstCategory(){
		$data = [
			'status' => 1,
			'parent_id' => 0
		];
		
		$order = [
			'listorder' => 'desc',
			'id' =>'desc'
		];
		
		return  $this->where($data)
					->order($order)
					->select();
	}

	public static function getFirstCategorys($parentId = 0){
		$data = [
			'parent_id' => $parentId,
			'status' => ['neq',-1]
		];

		$order = [
			'id' => 'desc'
		];

		$result = $this->where($data)
					->order($order)
					->select();
		//echo $this->getLastSql();
		return $result;
	}
}