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

$(document).on 'change', '#post_filetype_id', ->
  $.ajax(
    type: 'GET'
    url: '/posts/get_filetype2'
    data: {
      filetype_id: $(this).val()
    }
  ).done (data) ->
    $('.filetype2_area').html(data)
