'use strict'
$(document).ready(function() {
  $('.tableverifycodesingin').hide();
  $('.singinform').submit(function(e) {
      e.preventDefault();
      let email = $('.mailsingin').val();
      $.ajax({
        url:    '../components/component.singin.php',
        method: 'post',
        data: {
          email: email,
        },
      }).done(function(data2) {
        if (data2) {
          alert(data2);
          $('.mailsingin').val("");
          let mail = email;
          email = "";
          $('.tablemainsingin').hide();
          if (data2 == "На вашу почту был отправлен\nкод подтрерждения, введите\nего в появившееся поле,\nесли код не пришёл проверьте\nпапку \"Спам\"") {
              $('.tableverifycodesingin').show(500);
              $('.singinform').submit(function(e) {
                      e.preventDefault();
                      $.ajax({
                        url: '../components/component.singinverifty.php',
                        method: 'post',
                        data: {
                          code: $('.codeverifysingin').val(),
                          mail: mail,
                        },
                      }).done(function(data) {
                          if (data) {
                            alert(data);
                            if (data == "Вы успешно вошли в ваш аккаунт!") {
                              window.location = "/view/index.php";
                            }
                          } else {
                            alert("Введите код подтверждения");
                          }
                      })
              })
          }
        }

      })
  })
})
