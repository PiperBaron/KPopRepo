window.addEventListener('DOMContentLoaded',init,false);

function init() {
     var fieldset = document.getElementsByTagName('input');
    for (var i=0; i <fieldset.length; i++)
    {fieldset[i].addEventListener('click', toggle, false);}
}


function toggle() {   
    var id = this.id;
    var Suho = document.getElementsByClassName("Suho");
    var Baekhyun = document.getElementsByClassName("Baekhyun");
    var Chen = document.getElementsByClassName("Chen");
    var Chanyeol = document.getElementsByClassName("Chanyeol");
    var Kai = document.getElementsByClassName("Kai");
    var Sehun = document.getElementsByClassName("Sehun");
    var NonMember = document.getElementsByClassName("Non-Member");
    
    switch (id) {
     case "Suhotoggle": {
      var e;
      for (e=0; e < Suho.length; e++)
      {Suho[e].classList.toggle("on")}
       };
    break;
      case "Baekhyuntoggle": {
      var e;
      for (e=0; e < Baekhyun.length; e++)
      {Baekhyun[e].classList.toggle("on")}
       };
      break;
      case "Chentoggle": {
      var e;
      for (e=0; e < Chen.length; e++)
      {Chen[e].classList.toggle("on")}
       };
      break;
      case "Chanyeoltoggle": {
      var e;
      for (e=0; e < Chanyeol.length; e++)
      {Chanyeol[e].classList.toggle("on")}
       };
      break;
      case "Kaitoggle": {
      var e;
      for (e=0; e < Kai.length; e++)
      {Kai[e].classList.toggle("on")}
       };
      break;
      case "Sehuntoggle": {
      var e;
      for (e=0; e < Sehun.length; e++)
      {Sehun[e].classList.toggle("on")}
       };
      break;
            case "NonMembertoggle": {
      var e;
      for (e=0; e < NonMember.length; e++)
      {NonMember[e].classList.toggle("on")}
       };
      break;
      }
}