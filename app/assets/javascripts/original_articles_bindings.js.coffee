$ ->
  window.original_articles_bindings = () ->
    
    hide_agenda_text = () ->
      $('.full-text').hide()
      $('.comments').hide()
      
    show_agenda_text_bindings = () ->
      $('h1.article-or-post-title').click ->
        text = $(this).parent('hgroup').parent('header').parent('section').children('.text')
        text.children('.preview-text').slideToggle(
          'slow'
        )
        text.children('.full-text').slideToggle(
          'slow'
          ->
            text.children('.comments').slideToggle( 
              'slow'
              ->
                div = text.parent('section')
                window.image_slideshow_bindings( div )
            )
        )

    hide_agenda_text()
    show_agenda_text_bindings()