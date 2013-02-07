$ ->
  $('.nav-list a').click (e) ->
    e.preventDefault()
    $(document.body).animate('scrollTop': $($(e.srcElement).attr("href")).offset().top, 500)

  $('.listview tr').click (e) ->
    window.location.href = "page"


