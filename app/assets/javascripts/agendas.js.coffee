$ ->
  
  window.agenda_bindings = () ->
    
    set_agenda_height = () ->
      $('#agenda-content').css(
        'height', ( $('#content').height() - ( $('.pitch-wrapper').height() + $('#agenda-header').height() - 20 ) )
      ) 
      
    set_agenda_height()