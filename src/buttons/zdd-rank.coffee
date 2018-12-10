
class ZddRankButton extends Button

  name: 'zdd-rank'

  icon: 'icon iconfont zdd-simeditor-rank'

  htmlTag: 'i'

  _status: ->

  command: ->
    range = @editor.selection.range()

    $span = $('<span> </span>')
    range.insertNode $span[0]

    $i = $('<i>排行榜</i>')
    range.insertNode $i[0]

    $span2 = $('<span> </span>')
    range.insertNode $span2[0]

    @editor.selection.setRangeAfter $span[0], range

    @editor.trigger 'valuechanged'

Simditor.Toolbar.addButton ZddRankButton
