$('.rate-edit').click(function(e) {
  let id = $(this).attr('data-id');
  $.ajax({
    url: '../components/component.enterform.php',
    method: 'post',
    data: {
      id: id,
    },
  }).done(function(data) {
    $('.modalWindowEdit').html(data);
  })
})
