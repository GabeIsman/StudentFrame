$ ->

  window.slide = () ->

    # HOMEPAGE SLIDER
    ########################################################
    current_position = 0
    slides = $('.slide')
    slide_width = $('.slide').width()
    slide_height = $('.slide').height()
    slider = $('#slider')
  
    slides.css( 'float', 'left' )
    $('#slider').css(
      'height': slide_height,
      'width': slide_width * slides.length
    )

    t = setTimeout( =>
      automate
    ,5000 )

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

    # THE WHEN TO SLIDE FUNCTIONS
    # animation
    automate = () ->
      slide_left()
      t = setTimeout( =>
        automate()
      ,5000 )
    
    start_automate = () ->
      t = setTimeout( =>
        automate()
      ,5000 )
    
    start_automate()
    
  slide()
