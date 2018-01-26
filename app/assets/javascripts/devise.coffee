$(document).on 'change', '#user_industry_id', ->
  $.ajax(
    type: 'GET'
    url: '/users/get_subindustry'
    data: {
      industry_id: $(this).val()
    }
  ).done (data) ->
    $('.subindustry_area').html(data)

$(document).on 'change', '#user_occupation_id', ->
  $.ajax(
    type: 'GET'
    url: '/users/get_suboccupation'
    data: {
      occupation_id: $(this).val()
    }
  ).done (data) ->
    $('.suboccupation_area').html(data)
