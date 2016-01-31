(function() {
  $(document).on('ajax:success', 'a.vote', function(status, data, xhr) {
    $("#sizeoflike[data-id=" + data.id + "]").text(data.count);
    $("a.vote[data-id=" + data.id + "]").each(function() {
      var $a, href, text;
      $a = $(this);
      href = $a.attr('href');
      text = $a.text();
      $a.text($a.data('toggle-text')).attr('href', $a.data('toggle-href'));
      $a.data('toggle-text', text).data('toggle-href', href);
    });
  });

}).call(this);
