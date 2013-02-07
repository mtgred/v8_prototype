(function() {

  $(function() {
    $('.nav-list a').click(function(e) {
      e.preventDefault();
      return $(document.body).animate({
        'scrollTop': $($(e.srcElement).attr("href")).offset().top
      }, 500);
    });
    return $('.listview tr').click(function(e) {
      return window.location.href = "page";
    });
  });

}).call(this);
