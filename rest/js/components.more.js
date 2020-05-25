$(document).ready(function() {
  $('.button_m').on("click", function() {
    let id = this.id;
    let link = "more.php?id=" + id;
    window.location = link;
  })
});
