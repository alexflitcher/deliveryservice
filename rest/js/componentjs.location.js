$(document).ready(function() {
  setInterval(function() {
    $('.button_r').on("click", function () {
      let id = this.id;
      let link = "menu.php?id=" + id;
      window.location = link;
    })
  }, 1000)
});
