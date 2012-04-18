$ ->
  window.image_slideshow_bindings = ( div ) ->
    

  
    slideshow = () ->    
      current_position = 0
      slides = div.find('.image-slideshow-slide')
      slide_width = slides.width()
      slide_height = slides.height()
      slider = div.find('.image-slideshow-slider')
    
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

      # THE WHEN TO SLIDE FUNCTIONS
      t = setTimeout( =>
        automate
      , 5000 )
      
      # animation
      automate = () ->
        slide_left()
        t = setTimeout( =>
          automate()
        ,5000 )
      
      # on clicks
      div.find('.left').click ->
         slide_right()
         clearTimeout( t )
      div.find('.right').click ->
         slide_left()
         clearTimeout( t )
      div.find('.pause').click -> clearTimeout( t )
      div.find('.play').click -> automate()
      
      automate()
        
    slideshow()
        
    
    
    