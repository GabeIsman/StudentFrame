$ ->
  
  delay = (ms, func) -> setTimeout(func, ms)
  
  window.column_bindings = () ->
    $('.column').find('.article-or-post-wrapper').hide()
    $('.column-title').click ->
      console.log "click"
      div = $(this).parent('.column-header').parent('.column')
      div.find('.article-or-post-wrapper').slideToggle( 'slow' )

    