$(window).scroll(function() {
  if (window.innerWidth > 600) {
    var dy = $(window).scrollTop();
    $("#top-jumbotron").css("background-position", "center " + 0.5*dy + "px");
    var yshift = Math.min(0.2*dy, 400);
    $("#bottom-jumbotron").css("background-position", "center " + yshift + "px");
  }
});

$("#chevron,.img-header").click(function() {
  $('html, body').animate({
    scrollTop: $("#content").offset().top - 70
  }, 1000);
});

