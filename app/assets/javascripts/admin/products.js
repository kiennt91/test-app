$(document).on('turbolinks:load', function() {
  $('.upload-btn').on('click', function(e){
    e.preventDefault();
    $('.upload-file').click();
  });

  // ファイルを選択後、Ajaxでファイルアップロード
  $('.upload-file').on('change', fileUpload);

  function fileUpload() {
    // フォームデータを取得
    var formdata = new FormData($('.upload-form')[0]);

    // POSTでアップロード
    $.ajax({
        url         : '/admin/products/upload',
        type        : 'POST',
        data        : formdata,
        cache       : false,
        contentType : false,
        processData : false,
        dataType    : 'json'
    })
    .done(function(data, textStatus, jqXHR){
      // 取得した画像URLをセット
      $('#product_image_url').val(data.image_url).change();
    })
    .fail(function(jqXHR, textStatus, errorThrown){
      // TODO
    });
  }

  // 画像URLが変更される場合、プレビュー画像も反映
  $('#product_image_url').on('change', function(){
    $('.preview-product-img').attr('src', $(this).val());
  });

  // 画像が不正の場合、NO_IMAGEをセット
  $('img').error(function (){
    var img_target = this;
    setTimeout(function() {
      $(img_target).attr('src', '/assets/no_img.png');
    }, 0);
  });
});
