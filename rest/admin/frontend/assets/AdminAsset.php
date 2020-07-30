<?php

namespace frontend\assets;

use yii\web\AssetBundle;
use Yii;

class AdminAsset extends AssetBundle 
{
	public $basePath = '@webroot';
	public $baseUrl = '@web';
	public $css = [
		'css/admin.css',
		'//fonts.googleapis.com/css2?family=Ubuntu:wght@500&display=swap',
		'//fonts.googleapis.com/css2?family=Roboto+Slab:wght@200&display=swap',
		'//fonts.googleapis.com/css2?family=Krona+One&display=swap',
	];
	public $js = [
		'js/admin.js',
	];
	public $img = [
		'vk' => "/img/vk.png",
	];
}