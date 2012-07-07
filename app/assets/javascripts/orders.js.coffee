$(document).ready ->
  client_fields =
    'name': '#order_client_attributes_name',
    'address': '#order_client_attributes_address',
    'phone': '#order_client_attributes_phone'

  dog_fields =
    'name': '#order_dog_attributes_name',
    'race': '#order_dog_attributes_race'

  $('#order_client_id').chosen({
    allow_single_deselect: true
  }).change ->
    id = $(this).val()

    if id == ''
      _.each client_fields, (v, k) -> $(v).val('').removeAttr('disabled')
    
    else
      $.get '/clients/' + id,
        ((data) ->
          _.each client_fields, (v, k) -> $(v).val(data[k]).attr('disabled', 'disabled')
        ), 'json'

  $('#order_dog_id').chosen({
    allow_single_deselect: true
  }).change ->
    id = $(this).val()

    if id == ''
      _.each dog_fields, (v, k) -> $(v).val('').removeAttr('disabled')

    else
      $.get('/dogs/' + id,
        ((data) ->
          _.each(dog_fields, (v, k) -> $(v).val(data[k]).attr('disabled', 'disabled')))
      , 'json')

