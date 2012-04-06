$ ->
  
  delay = (ms, func) -> setTimeout(func, ms)
  window.commentaryBindings = () ->
  
    $('.blog-title').click ->
      a = new AjaxIt
      a.run( '/blogs/ajax_show/', $(this).data( 'blog-id' ) )
    
  
    AjaxIt = () ->
      ls: new window.LoadingSign( $('#content') )
      run: ( ajax_url, blog_id ) ->
        this.ls.prepare()
        this.ls.auto( 1 )
        ajax_away = () ->
          $.ajax(
            url: ajax_url
            data: { id: blog_id }
            success: (data) ->
              $('#content').html(data)
          )
        delay 1000, -> ajax_away()