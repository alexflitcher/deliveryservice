$('.formrateadd').submit(function(e) {
  e.preventDefault();
  let id      = $(this).attr('id');
  let message = $('.textarea-resize').val();
  $.ajax({
    url: '../components/component.addmorerate.php',
    method: 'post',
    data: {
      id: id,
      message: message,
    },
  }).done(data => alert(data))
})
