window.addEventListener('DOMContentLoaded',init,false);

function init() {
     var fieldset = document.getElementsByTagName('input');
    for (var i=0; i <fieldset.length; i++)
    {fieldset[i].addEventListener('click', toggle, false);}
}


function toggle() {   
    var id = this.id;
    var Taeyong = document.getElementsByClassName("Taeyong");
    var Taeil = document.getElementsByClassName("Taeil");
    var Johnny = document.getElementsByClassName("Johnny");
    var Yuta = document.getElementsByClassName("Yuta");
    var Doyoung = document.getElementsByClassName("Doyoung");
    var Jaehyun = document.getElementsByClassName("Jaehyun");
    var WinWin = document.getElementsByClassName("WinWin");
    var Jungwoo = document.getElementsByClassName("Jungwoo");
    var MarkLee = document.getElementsByClassName("MarkLee");
    var Haechan = document.getElementsByClassName("Haechan");
    var AllMembers = document.getElementsByClassName("All");
    
    switch (id) {
     case "Taeyongtoggle": {
      var e;
      for (e=0; e < Taeyong.length; e++)
      {Taeyong[e].classList.toggle("on")}
       };
    break;
      case "Taeiltoggle": {
      var e;
      for (e=0; e < Taeil.length; e++)
      {Taeil[e].classList.toggle("on")}
       };
      break;
      case "Johnnytoggle": {
      var e;
      for (e=0; e < Johnny.length; e++)
      {Johnny[e].classList.toggle("on")}
       };
      break;
      case "Yutatoggle": {
      var e;
      for (e=0; e < Yuta.length; e++)
      {Yuta[e].classList.toggle("on")}
       };
      break;
      case "Doyoungtoggle": {
      var e;
      for (e=0; e < Doyoung.length; e++)
      {Doyoung[e].classList.toggle("on")}
       };
      break;
      case "Jaehyuntoggle": {
      var e;
      for (e=0; e < Jaehyun.length; e++)
      {Jaehyun[e].classList.toggle("on")}
       };
      break;
      case "WinWintoggle": {
      var e;
      for (e=0; e < WinWin.length; e++)
      {WinWin[e].classList.toggle("on")}
       };
      break;
      case "Jungwootoggle": {
      var e;
      for (e=0; e < Jungwoo.length; e++)
      {Jungwoo[e].classList.toggle("on")}
       };
      break;
      case "MarkLeetoggle": {
      var e;
      for (e=0; e < MarkLee.length; e++)
      {MarkLee[e].classList.toggle("on")}
       };
      break;
      case "Haechantoggle": {
      var e;
      for (e=0; e < Haechan.length; e++)
      {Haechan[e].classList.toggle("on")}
       };
      break;
             case "AllMemberstoggle": {
      var e;
      for (e=0; e < AllMembers.length; e++)
      {AllMembers[e].classList.toggle("on")}
       };
      break;
      }
}