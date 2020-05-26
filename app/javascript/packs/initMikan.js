document.addEventListener('turbolinks:load', function () {
  const elem = document.querySelector('.js-mikan');
  if (elem !== null) {
    const mikan = require('mikanjs');
    const target = elem;
    const convert = (mikan(target.innerHTML));
    target.innerHTML = convert;
  }
}, false);
