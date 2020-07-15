<?php

require_once '../connect.php';
require_once '../models/Restrate.php';

$id = htmlentities($_POST['id']);
$restrate = new DeliveryService\Core\Restrate($pdo);
$data = $restrate->get($id);
?>

<p class="fortab"></p>
<form class="rest-edit-message" data-id="<?=$id?>" method="post">
  Сообщение<br>
  <textarea name="message-edit" class="i_search notresize"><?=$data['message']?></textarea><br>
  <input type="submit" class="i_search">
</form>


<script type="text/javascript">

  $('.rest-edit-message').submit(function(e) {
    e.preventDefault();
    let id = $(this).attr('data-id');
    let message = $('.notresize').val();
    $.ajax({
      url: '../components/component.editmessage.php',
      method: 'post',
      data: {
        id: id,
        message: message,
      },
    }).done(function(e) {
          $('.fortab').html(e);
    })
  })
</script>
