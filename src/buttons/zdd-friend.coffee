
class ZddFriendButton extends Button
  @i18n =
    'zh-CN':
      'zdd-award': '好友昵称'
  name: 'zdd-friend'

  icon: 'icon iconfont zdd-simeditor-friend'

  htmlTag: 'i'

  _status: ->

  command: ->
    range = @editor.selection.range()

    $span = $('<span> </span>')
    range.insertNode $span[0]

    $i = $('<i>好友</i>')
    range.insertNode $i[0]

    $span2 = $('<span> </span>')
    range.insertNode $span2[0]

    @editor.selection.setRangeAfter $span[0], range
    @editor.trigger 'valuechanged'

Simditor.Toolbar.addButton ZddFriendButton
