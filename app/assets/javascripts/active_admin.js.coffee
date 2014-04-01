#= require active_admin/base
#= require tinymce


$(document).ready ->
  tinyMCE.init
    selector: '#post_content'
    plugins: 'table'
    theme_advanced_toolbar_align: 'left'
    theme_advanced_buttons3_add: 'tablecontrols'

  return