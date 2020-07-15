<?php
session_start();

require_once '../connect.php';
require_once '../models/Menu.php';
require_once '../models/Purchase.php';

$menu     = new DeliveryService\Core\Menu($pdo);
$purchase = new DeliveryService\Core\Purchase($pdo);

?>
<div class="menupos">
<?php
foreach ($_SESSION['buy'] as $key => $value) {
$dmenu = $menu->get($value);
?>
<div class="menu-menu">
  <b class="menu-img"><img src='<?=$dmenu['img']?>'></b>
  <b class="menu-name"><?=$dmenu['name']?></b>
  <b class="menu-cost"><?=$dmenu['price']?> рублей</b>
  <b class="menu-link"><a href='more.php?id=<?=$dmenu['id']?>'><img src='../img/connection.png'></a></b>
  <b class="menu-delete" id='<?=$key?>'><img src="../img/criss-cross.png"></b>
</div>

<?php
}
?>
</div>

	<div class="totalprice">
	<b class="total">К оплате: </b>
	<?php  
		$price = [];
		foreach ($_SESSION['buy'] as $key => $value) {
			$d = $menu->get($value);
			$price[] = $d['price'];

		}

		$totalprice = 0;
		for ($i=0; $i < count($price); $i++) { 
			$totalprice += $price[$i];	
		}
	?>

	   <b class="sum"> <?=$totalprice?> рублей</b>
	</div>
	<div class="hiddenform">
		<form method="post">
			<h1>Введите данные</h1>
			Адрес доставки <input class="i_search" type="text" required="" name="address" placeholder="Ваш адрес"><br>
			Тип оплаты  <br> Наличными курьеру <input type="radio" required="" value="courier" name="type_pay"><br>
						     Онлайн оплата <input type="radio" required="" value="online_pay" name="type_pay"><br><br>
			Тип доставки<br> Курьером <input type="radio" required="" value="courier" name="type_del"><br>
						   	 Самовывоз <input type="radio" required="" value="yourget" name="type_del"><br><br>
			Пожелания к заказу<br><textarea class="i_search textarea-resize" required="" name="message" cols="30" rows="10"></textarea>
			<input type="submit" class="i_search" value="Перейти к оплате">
		</form>
	</div>
	<?php
		if ($_SESSION['buy']) {
	?>
	<p class="button_r pay">Заказать</p>
	<?php 
		} else {
	?>
	<p class="warning yellow">Чтобы заказать еду, вы должны выбрать продукты</p>
	<?php } ?>