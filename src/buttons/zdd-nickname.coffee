
class ZddNicknameButton extends Button
  @i18n =
    'zh-CN':
      'zdd-nickname': '用户昵称'
  name: 'zdd-nickname'

  icon: 'icon iconfont zdd-simeditor-user'

  htmlTag: 'i'

  _status: ->

  command: ->
    range = @editor.selection.range()

    $span = $('<span> </span>')
    range.insertNode $span[0]

    $i = $('<i>昵称</i>')
    range.insertNode $i[0]

    $span2 = $('<span> </span>')
    range.insertNode $span2[0]

    @editor.selection.setRangeAfter $span[0], range
    @editor.trigger 'valuechanged'

Simditor.Toolbar.addButton ZddNicknameButton
