$(document).ready(function() {
  $('.singupform').submit(function(e) {
    e.preventDefault();
    $.ajax({
      url: '../components/component.singup.php',
      method: 'post',
      data: {
        'name': $('.namesingup').val(),
        'family': $('.familysingup').val(),
        'email': $('.emailsingup').val(),
        'phone': $('.phonesingup').val(),
        'birthday': $('.birthdaysingup').val(),
      },
    }).done(function(data) {
      alert(data);
      $('.namesingup').val("");
      $('.familysingup').val("");
      $('.emailsingup').val("");
      $('.phonesingup').val("");
      $('.birthdaysingup').val("");
    })
  })
});
