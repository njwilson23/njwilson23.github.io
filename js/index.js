
// Set the initial backgorund size
$("body").css("background-size", (window.innerWidth + 100) + "px");

// Shift the background as the page scrolls
$(window).scroll(function() {
  if (window.innerWidth > 600) {
    var dy = $(window).scrollTop();
    var shift = - Math.min(0.5*dy, 100);
    $("body").css("background-position", shift + "px " + dy + "px");
    $("body").css("background-size", window.innerWidth + 100 + "px auto");
  }
});

