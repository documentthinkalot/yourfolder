$(document).on 'change', '#post_category_id', ->
  $.ajax(
    type: 'GET'
    url: '/posts/get_subcategory'
    data: {
      category_id: $(this).val()
    }
  ).done (data) ->
    $('.subcategory_area').html(data)

$(document).on 'change', '#post_subcategory_id', ->
  $.ajax(
    type: 'GET'
    url: '/posts/get_sub2category'
    data: {
      subcategory_id: $(this).val()
    }
  ).done (data) ->
    $('.sub2category_area').html(data)

$(document).on 'change', '#post_sub2category_id', ->
  $.ajax(
    type: 'GET'
    url: '/posts/get_sub3category'
    data: {
      sub2category_id: $(this).val()
    }
  ).done (data) ->
    $('.sub3category_area').html(data)

$(document).on 'change', '#post_sub3category_id', ->
  $.ajax(
    type: 'GET'
    url: '/posts/get_sub4category'
    data: {
      sub3category_id: $(this).val()
    }
  ).done (data) ->
    $('.sub4category_area').html(data)

$(document).on 'change', '#post_sub4category_id', ->
  $.ajax(
    type: 'GET'
    url: '/posts/get_sub5category'
    data: {
      sub4category_id: $(this).val()
    }
  ).done (data) ->
    $('.sub5category_area').html(data)

$(document).on 'change', '#post_sub5category_id', ->
  $.ajax(
    type: 'GET'
    url: '/posts/get_sub6category'
    data: {
      sub5category_id: $(this).val()
    }
  ).done (data) ->
    $('.sub6category_area').html(data)
