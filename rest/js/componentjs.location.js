$(document).ready(function() {
  $('.button_r').on("click", function () {
    let id = this.id;
    let link = "/view/menu.php?id=" + id;
    window.location = link;
  })
});
