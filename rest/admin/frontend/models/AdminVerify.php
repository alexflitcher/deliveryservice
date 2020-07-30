<?php

namespace frontend\models;

use yii\base\Model;
use frontend\models\Admins;

class AdminVerify extends Model 
{
	public $username, $password;
    const SCENARIOS_LOGIN = 'login';
	
	public function getUser() 
	{
        $info = Admins::find()->where(['username' => 'admin'])->asArray()->one();
		return $info;
	}
	
	public function scenarios() 
	{
		$scenarous = parent::scenatios();
		$scenarous[SCENARIOS_LOGIN] = ['username', 'password'];
		return $scenarous;
	}
	
	public function verify() 
	{
		return [['username', 'password'], 'required'];
	}
}