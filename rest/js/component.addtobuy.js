$('.dmp-purchase').click(function(e) {
  let id = $(this).attr('id');
  $.ajax({
    url: '../components/component.addtobuy.php',
    method: 'post',
    data: {
      id: id,
    },
  }).done(function(data) {
    alert(data);
  })
})
