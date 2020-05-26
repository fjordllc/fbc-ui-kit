document.addEventListener('turbolinks:load', function () {
  const elem = document.querySelector('.js-upload-preview');
  if (elem !== null) {
    let input = document.querySelector(".js-upload-preview .js-upload-preview__upload")
    let preview = document.querySelector(".js-upload-preview .js-upload-preview__preview")
    input.addEventListener("change", (e) => {
      handleChange(e)
    })

    function handleChange(event) {
      while (preview.lastChild) {
        preview.removeChild(preview.lastChild);
      }
      let file = event.target.files[0]
      const reader = new FileReader()
      reader.readAsDataURL(file)
      var blobUrl = window.URL.createObjectURL(file)
      preview.innerHTML += '<img src="' + blobUrl + '">'
    }
  }
}, false);
