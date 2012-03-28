$ ->

  $('#home-li').addClass( 'current-li' )
  $('ul#primary-menu li').click ->
    $('ul#primary-menu li').removeClass( 'current-li' )
    $(this).addClass( 'current-li' )
  
  $('li#home-li').click ->
    ls = LoadingSign( $('#content') )
    ls.prepare()
    auto = ( x ) ->
      if $('#loading-sign').length > 0
        ls.rotate( x )
        x++
        t = setTimeout( =>
          auto( x )
        1, )
      else
        clearTimeout(t)
    auto()
    $.ajax(
      url: '/front_pages/front_page'
      success: (data) ->
        $('#content').html(data)
    )
  
  $('li#agenda-li').click ->    
    ls = LoadingSign( $('#content') )
    ls.prepare()
    auto = ( x ) ->
      if $('#loading-sign').length > 0
        ls.rotate( x )
        x++
        t = setTimeout( =>
          auto( x )
        1, )
      else
        clearTimeout(t)
    auto()
    $.ajax(
      url: 'agendas/current_agenda'
      success: (data) ->
        $('#content').html(data)
    )
    
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
                aboutSliderBindings()
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
      console.log "rotating"
      $('#loading-sign').css(
        '-webkit-transform': 'rotate(' + x + 'deg)',
        '-moz-transform': 'rotate(' + x + 'deg)',
        '-ms-transform': 'rotate(' + x + 'deg)',
        'o-transform': 'rotate(' + x + 'deg)',
        'transform': 'rotate(' + x + 'deg)'
      )    

  aboutSliderBindings = () ->

    $('.about-control').mousedown ->
      $(this).css( 'background-color', 'rgb(0,0,50)' )
    $('.about-control').mouseup ->
      $(this).css( 'background-color', 'white' )

    current_position = 0
    slides = $('.about-slide')
    slide_width = $('.about-slide').width() + 40
    slide_height = $('.about-slide').height()
    slider = $('#about-slider')

    slides.css( 'float', 'left' )
    slider.css(
      'height': slide_height,
      'width': slide_width * slides.length
    )


    slide = () ->
      current_position = 0 if current_position > slides.length - 1
      current_position = slides.length - 1 if current_position < 0
      slider.animate(
        'margin-left': -( slide_width * current_position ),
        1000
      )

    # slide left
    slide_left = () ->
      current_position += 1
      slide()

    # slide right
    slide_right = () ->
      current_position -= 1
      slide()

    $("#left-about-control").click ->
      console.log "hello"
      slide_left()

    $('#right-about-control').click ->
      slide_right()
    
    $('li.about_menu_li').click ->
      current_position = $(this).data( 'about-order' )
      slide()
