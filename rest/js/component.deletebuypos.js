$('.menu-delete').click(function(e) {
  let pos = $(this).attr('id');
  $.ajax({
    url: '../components/component.deletebuypos.php',
    method: 'post',
    data: {
      pos: pos,
    },
  }).done(function(data) {
    alert("Удалено");
  })
})
