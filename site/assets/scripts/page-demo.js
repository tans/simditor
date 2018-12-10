(function() {
  $(function() {
    var $preview, editor, toolbar;
    Simditor.locale = 'en-US';
    toolbar = ['link', '|', 'zdd-rank', 'zdd-nickname', 'zdd-friend', 'zdd-renqi', 'zdd-award'];
    editor = new Simditor({
      textarea: $('#txt-content'),
      placeholder: '这里输入文字...',
      toolbar: toolbar,
      pasteImage: true,
      defaultImage: 'assets/images/image.png',
      upload: location.search === '?upload' ? {
        url: '/upload'
      } : false
    });
    $preview = $('#preview');
    if ($preview.length > 0) {
      return editor.on('valuechanged', function(e) {
        return $preview.html(editor.getValue());
      });
    }
  });

}).call(this);
