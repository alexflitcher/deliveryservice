$(document).ready(function() {
  let min = 10;

  $('.loadmore').on('click', function(event) {
    $.ajax({
      url: '../components/components.teenloadsearch.php',
      method: 'post',
      data: {
        min: min,
        q:   
      }
    }).done(function(data) {
      min += 10;
      let newdata = $('.newdata').html();
      $('.newdata').html(newdata + data);

    })
  })
})
