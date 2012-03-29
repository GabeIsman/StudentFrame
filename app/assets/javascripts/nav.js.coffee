$ ->
  
  delay = (ms, func) ->
    setTimeout func, ms

  $('#home-li').addClass( 'current-li' )
  $('ul#primary-menu li').click ->
    $('ul#primary-menu li').removeClass( 'old-current-li' )
    if $(this).attr("id") is "about-li"
      $('.current-li').addClass( 'old-current-li' )
    $('ul#primary-menu li').removeClass( 'current-li' )
    $(this).addClass( 'current-li' )
      
  
  $('li#home-li').click ->
    a = AjaxIt()
    a.run( '/front_pages/front_page' )

  $('li#agenda-li').click ->
    a = AjaxIt()
    a.run( '/agendas/current_agenda' )
  
  $('li#other_news-li').click ->
    a = AjaxIt()
    a.run( '/articles/other_news' )
    
  $('li#commentary-li').click ->
    a = AjaxIt()
    a.run( '/blogs/commentary' )
    
  $('li#about-li').click ->
    $('#lightbox-gloss').slideToggle(
      'slow',
      ->
        $('#lightbox-wrapper').slideToggle(
          'slow',
          ->
            $('.about-control').show()
            $.ajax(
              url: '/about_pages/about_page'
              success: (data) ->
                $('#lightbox-wrapper').html(data)
                window.about_slide()
            )
        )  
    )

  $('#lightbox-gloss').click ->
    $('.about-control').hide()
    $('#lightbox-wrapper').slideToggle(
      'slow',
      ->
        $('#lightbox-gloss').slideToggle(
          'slow',
          ->
            $('ul#primary-menu li').removeClass( 'current-li' )
            $('.old-current-li').addClass( 'current-li' )
        )
    )

    

  window.LoadingSign = ( div ) ->
    topMargin: (div.height() / 2) - 25
    done: false
    prepare: () ->
      div.html('')
      div.append('<div id="loading-sign"></div>')
      $('#loading-sign')
        .css(
          'background-color': 'transparent',
          'border-top': '5px solid black',
          'border-right': '5px solid black'
          'border-radius': 50
          'margin-top': this.topMargin,
          'margin-left': -25,
          'position': 'absolute',
          'left': '50%'
          'width': '50px',
          'height': '50px',
        )
    rotate: ( x ) ->
      $('#loading-sign').css(
        '-webkit-transform': 'rotate(' + x + 'deg)',
        '-moz-transform': 'rotate(' + x + 'deg)',
        '-ms-transform': 'rotate(' + x + 'deg)',
        'o-transform': 'rotate(' + x + 'deg)',
        'transform': 'rotate(' + x + 'deg)'
      )
    auto: ( x ) ->
      if $('#loading-sign').length > 0
        this.rotate( x )
        x++
        t = setTimeout( =>
          this.auto( x )
        ,1 )
      else
        clearTimeout(t)
        
  AjaxIt = () ->
    ls: window.LoadingSign( $('#content') )
    run: ( ajax_url ) ->
      this.ls.prepare()
      this.ls.auto( 1 )
      ajax_away = () ->
        console.log "ajax_away called"
        $.ajax(
          url: ajax_url
          success: (data) ->
            $('#content').html(data)
            if ajax_url is '/front_pages/front_page'
              window.slide()
            if ajax_url is '/blogs/commentary'
              window.commentaryBindings()
        )
      delay 1000, -> ajax_away()
