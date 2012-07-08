$(document).ready ->
  $('table.dblclick-table tr').dblclick ->
    url = $(this).data 'url'
    if url
      window.location.href = url
