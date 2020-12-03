window.addEventListener('DOMContentLoaded',init,false);

function init() {
    var buttons = document.getElementsByTagName("button");
    var button = buttons[0];
    button.addEventListener('click',show_hide,false);
}

function show_hide() {
  var tog = document.getElementById('member_toggle');
  if (tog.style.visibility === 'hidden') {
    tog.style.visibility = 'visible';
  } else {
    tog.style.visibility = 'hidden';
  }
}