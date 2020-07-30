<?php

namespace frontend\controllers;

use yii\web\Controller;
use Yii;
use frontend\models\AdminVerify;

class AdminController extends Controller
{
	public function behaviors() 
	{
		return [
			'access' => [
				'class' => 'common\components\AccessFilter',
				'except' => ['error'],
			],
		];
	}
	
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }
	
	public function actionIndex() 
	{
		return $this->render('index');
	}
	
	public function actionLogin()
	{
		$model = new AdminVerify();
        $model->username = 'admin';
	    $a = $model->getUser();
		
		return $this->render('login', ['model' => $a]);
		
	}
}
