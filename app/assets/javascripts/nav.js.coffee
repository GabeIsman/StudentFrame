$ ->
  
  delay = (ms, func) ->
    setTimeout func, ms

  $('#home-li').addClass( 'current-li' )
  $('ul#primary-menu li').click ->
    $('ul#primary-menu li').removeClass( 'current-li' )
    $(this).addClass( 'current-li' )
  
  $('li#home-li').click ->
    ls = LoadingSign( $('#content') )
    ls.prepare()
    ls.auto( 1 )
    
    ajaxit = () ->
      $.ajax(
        url: '/front_pages/front_page'
        success: (data) ->
          $('#content').html(data)
          window.slide()
      )
    ls.auto( 1 )
    delay 1000, -> ajaxit()
  
  $('li#agenda-li').click ->    
    ls = LoadingSign( $('#content') )
    ls.prepare()
    ajaxit = () ->
      $.ajax(
        url: 'agendas/current_agenda'
        success: (data) ->
          $('#content').html(data)
      )
    ls.auto( 1 )
    delay 1000, -> ajaxit()
    
  $('li#about-li').click ->
    $('#lightbox-gloss').slideToggle(
      'slow',
      ->
        $('#lightbox-wrapper').slideToggle(
          'slow',
          ->
            $('.about-control').show()
            $.ajax(
              url: 'about_pages/about_page'
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
          'slow'
        )
    )

    

  LoadingSign = ( div ) ->
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
      console.log "#{x}"
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
