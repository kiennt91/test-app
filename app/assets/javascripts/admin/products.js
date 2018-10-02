
(function() {
  $(function() {
    $('.upload-btn').on('click', function(e){
      e.preventDefault();
      $('.upload-file').click();
    });

    $('.upload-file').on('change', function(){
      $('.upload-form').submit();
    });
  });
})();
