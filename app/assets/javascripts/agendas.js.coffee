$ ->
  
  window.hide_agenda_text = () ->
    $('.full-text').hide()
    $('.comments').hide()
    
  window.show_agenda_text_bindings = () ->
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
        ->
          jscript_slide_bar()
          
      )
      
  jscript_slide_bar = () ->
    console.log $('#agenda-list').height()
    if $('ul#agenda-list').height() > $('#content').height()
      console.log "hello world"
    