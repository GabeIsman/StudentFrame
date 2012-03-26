$ ->
  initBindings = () ->
    $('li#home_li').click ->
      $.ajax(
        url: '/front_pages/front_page'
        success: (data) ->
          $('#content').html(data)
      )
      window.slide()
    $('li#agenda_li').click ->
      $.ajax(
        url: 'agendas/current_agenda'
        success: (data) ->
          $('#content').html(data)
      )
  
  initBindings()
  

  