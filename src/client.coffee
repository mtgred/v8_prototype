$ ->
  $('.nav-list a').click (e) ->
    e.preventDefault()
    $(document.body).animate('scrollTop': $($(e.srcElement).attr("href")).offset().top, 500)

  $('.navbar .nav a').click (e) ->
    #e.preventDefault()
    #$('.navbar .nav .active').removeClass('active')
    #$(@).addClass('active')
