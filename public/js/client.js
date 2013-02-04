(function() {

  $(function() {
    $('.nav-list a').click(function(e) {
      e.preventDefault();
      return $(document.body).animate({
        'scrollTop': $($(e.srcElement).attr("href")).offset().top
      }, 500);
    });
    return $('.navbar .nav a').click(function(e) {});
  });

}).call(this);
