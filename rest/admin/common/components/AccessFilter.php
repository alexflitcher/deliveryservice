<?php

namespace common\components;

use yii\base\ActionFilter;
use Yii;

class AccessFilter extends ActionFilter 
{
	private $access;
	
	public function beforeAction($action) 
	{
		if (Yii::$app->request->cookies->getValue('role') == 'admin') {
			$this->access = true;
		} else {
			$this->access = false;
		}
		return parent::beforeAction($action);
	}
	
	public function afterAction($action, $result) 
	{
		if ($this->access) {
			return $result;
		} else {
			return $result;
		}
	}
}