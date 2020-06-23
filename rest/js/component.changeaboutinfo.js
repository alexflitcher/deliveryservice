$('.metadata').click(function(e) {
  let id      = $(this).attr('id');
  let classf  = $(this).attr('class').split(' ');
  let nclass  = classf[1];
  $.ajax({
    url: '../components/component.enterdataid.php',
    method: 'post',
    data: {
      id: id,
      type: nclass,
    },
  }).done(function(data) {
    $('.modalWindowEdit').html('<p class="fortab"></p>' + data);
    location.href = location.href;
  });
});
