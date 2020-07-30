<?php
use yii\helpers\Html;
use frontend\assets\AdminAsset;

$adminAsset = AdminAsset::register($this);
?>

<?php $this->beginPage() ?>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="<?=Yii::$app->language?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<?=Html::csrfMetaTags()?>
	<title><?=Html::encode($this->title)?></title>
	<?php $this->head() ?>
  </head> 
  <body>
  	<?php $this->beginBody() ?>
    <header class="head">
	   <div class="title">Админ-панель</div>
	</header>
	  <main class="content">
	  <?=$content?>
	  </main>
	<footer class="foot">
	  <div class="title">Админ-панель</div>
	  <div class="links">
		  <div class="title">Наши соц.сети</div>
	      <div class="social">
		  <div class="vk"><img src="<?=$adminAsset->img['vk']?>" alt="VK"></div>
          <div class="vk"><img src="<?=$adminAsset->img['vk']?>" alt="VK"></div>
		  <div class="vk"><img src="<?=$adminAsset->img['vk']?>" alt="VK"></div>
	      </div>
       </div>
	   <div class="confirm">
	      <div class="user">Пользовательское соглашение</div>  
		  <div class="polite">Политика конфеденцальности</div>  
	   </div>
	</footer>
	<?php $this->endBody() ?>
  </body>
</html>
<?php $this->endPage() ?>