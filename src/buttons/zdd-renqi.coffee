
class ZddRenqiButton extends Button
  @i18n =
    'zh-CN':
      'zdd-award': '人气值'
  name: 'zdd-renqi'

  icon: 'icon iconfont zdd-simeditor-like'

  htmlTag: 'i'

  _status: ->

  command: ->
    range = @editor.selection.range()

    $span = $('<span> </span>')
    range.insertNode $span[0]

    $i = $('<i>人气值</i>')
    range.insertNode $i[0]

    $span2 = $('<span> </span>')
    range.insertNode $span2[0]

    @editor.selection.setRangeAfter $span[0], range
    @editor.trigger 'valuechanged'

Simditor.Toolbar.addButton ZddRenqiButton
