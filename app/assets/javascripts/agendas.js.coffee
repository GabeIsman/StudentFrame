$ ->
  
  window.agenda_bindings = () ->
    
    set_agenda_height = () ->
      $('#agenda-content').css(
        'height', ( $('#content').height() - ( $('.pitch-wrapper').height() + $('#agenda-header').height() ) )
      )
  
    hide_agenda_text = () ->
      $('.full-text').hide()
      $('.comments').hide()
    
    show_agenda_text_bindings = () ->
      $('h1.agenda-article-title').click ->
        text = $(this).parent('header').parent('.article-wrapper').children('.text')
        text.children('.preview-text').slideToggle(
          'slow'
        )
        text.children('.full-text').slideToggle(
          'slow'
        )
        text.children('.comments').slideToggle(
          'slow'
        )
        
    set_agenda_height()
    hide_agenda_text()
    show_agenda_text_bindings()