window.addEventListener('DOMContentLoaded', function () {
  const uploader = document.getElementById('js-upload-preview');
  const preview = document.getElementById('js-upload-preview__preview');
  if (uploader != null) {
    uploader.addEventListener("change", function () {
      // フォームで選択された全ファイルを取得
      var fileList = this.files;
      // 個数分の画像を表示する
      for (var i = 0, l = fileList.length; l > i; i++) {
        // Blob URLの作成
        var blobUrl = window.URL.createObjectURL(fileList[i]);
        // HTMLに書き出し (src属性にblob URLを指定)
        preview.innerHTML += '<a href="' + blobUrl + '" target="_blank"><img src="' + blobUrl + '"></a>';
      }
    });
  }
}, false);
