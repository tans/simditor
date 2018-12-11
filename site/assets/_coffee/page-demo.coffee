
$ ->
  Simditor.locale = 'en-US'

  toolbar= ['link', 'zdd-emoji', '|',  'zdd-rank', 'zdd-nickname', 'zdd-friend', 'zdd-renqi', 'zdd-award']

  editor = new Simditor
    textarea: $('#txt-content')
    placeholder: '这里输入文字...'
    toolbar: toolbar
    pasteImage: true
    defaultImage: 'assets/images/image.png'
    upload: if location.search == '?upload' then {url: '/upload'} else false

  $preview = $('#preview')
  if $preview.length > 0
    editor.on 'valuechanged', (e) ->
      $preview.html editor.getValue()
