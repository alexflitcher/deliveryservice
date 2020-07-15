$('.reply-div').hide();

$('.formrateadd').submit(function(e) {
  e.preventDefault();

  let message = $('#textarea-id').val();
  let id      = $(this).attr('id');

  $.ajax({
    url: '../components/component.raterestadd.php',
    method: 'post',
    data: {
      message: message,
      id_rest: id,
    },
  }).done(function(data) {
    alert(data);
    location.href = location.href;
  })
})




$('.form_reply').submit(function(e) {
  e.preventDefault();
  let id_com  = $(this).attr('id');
  let id_rest = $('.formrateadd').attr('id');
  let message = $('textarea[data-id="' + id_com +'"]').val();

  $.ajax({
    url: '../components/component.raterestreplyadd.php',
    method: 'post',
    data: {
      id_com: id_com,
      id_rest: id_rest,
      message: message,
    },
  }).done(function(data) {
    alert(data);
    location.href = location.href;
  })

})

let i = 0;
$('.rate-reply').click(function(e) {
  $('.reply-div').toggle(500);
  i++;
  if (i % 2 == 0) {
    $('.rate-reply').html("Ответить");
  } else {
    $('.rate-reply').html("Закрыть");
  }
})
