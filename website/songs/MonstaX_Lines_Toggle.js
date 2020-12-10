window.addEventListener('DOMContentLoaded',init,false);

function init() {
     var fieldset = document.getElementsByTagName('input');
    for (var i=0; i <fieldset.length; i++)
    {fieldset[i].addEventListener('click', toggle, false);}
}


function toggle() {   
    var id = this.id;
    var Shownu = document.getElementsByClassName("Shownu");
    var Minhyuk = document.getElementsByClassName("Minhyuk");
    var Kihyun = document.getElementsByClassName("Kihyun");
    var Hyungwon = document.getElementsByClassName("Hyungwon");
    var Joohoney = document.getElementsByClassName("Joohoney");
    var IM = document.getElementsByClassName("IM");
    
    switch (id) {
     case "Shownutoggle": {
      var e;
      for (e=0; e < Shownu.length; e++)
      {Shownu[e].classList.toggle("on")}
       };
    break;
      case "Minhyuktoggle": {
      var e;
      for (e=0; e < Minhyuk.length; e++)
      {Minhyuk[e].classList.toggle("on")}
       };
      break;
      case "Kihyuntoggle": {
      var e;
      for (e=0; e < Kihyun.length; e++)
      {Kihyun[e].classList.toggle("on")}
       };
      break;
      case "Hyungwontoggle": {
      var e;
      for (e=0; e < Hyungwon.length; e++)
      {Hyungwon[e].classList.toggle("on")}
       };
      break;
      case "Joohoneytoggle": {
      var e;
      for (e=0; e < Joohoney.length; e++)
      {Joohoney[e].classList.toggle("on")}
       };
      break;
      case "IMtoggle": {
      var e;
      for (e=0; e < IM.length; e++)
      {IM[e].classList.toggle("on")}
       };
      break;
      }
}