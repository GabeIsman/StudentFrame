$ ->
  init_bindings = () ->
    $('form#front-page-form')
      .bind('ajax:beforeSend', () ->
        alert "Before Send"
        $('tr.submit input').hide()
      )
      .bind('ajax:success', (evt, data) ->
        alert "Success"
      )
      .bind('ajax:error', (xhr, status, error) ->
        alert "Error"
        $('tr.submit input').show()
      )
      .bind('ajax:complete', () ->
      )
  init_bindings()