$ ->
  window.about_slide = () ->

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
      $('li.about_menu_li').removeClass( 'current-about-li' )
      slider.animate(
        'margin-left': -( slide_width * current_position ),
        1000
      )
      $('li.about_menu_li').each (i) ->
       if current_position == $(this).data( 'about-order' )
          $(this).addClass( 'current-about-li' )

    # slide left
    slide_left = () ->
      current_position += 1
      slide()

    # slide right
    slide_right = () ->
      current_position -= 1
      slide()

    $("#left-about-control").click ->
      slide_left()

    $('#right-about-control').click ->
      slide_right()

    $('li.about_menu_li').click ->
      current_position = $(this).data( 'about-order' )
      slide()
      