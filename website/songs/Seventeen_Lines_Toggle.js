window.addEventListener('DOMContentLoaded',init,false);

function init() {
     var fieldset = document.getElementsByTagName('input');
    for (var i=0; i <fieldset.length; i++)
    {fieldset[i].addEventListener('click', toggle, false);}
}


function toggle() {   
    var id = this.id;
    var SCoups = document.getElementsByClassName("SCoups");
    var Jeonghan = document.getElementsByClassName("Jeonghan");
    var Joshua = document.getElementsByClassName("Joshua");
    var Jun = document.getElementsByClassName("Jun");
    var Hoshi = document.getElementsByClassName("Hoshi");
    var Wonwoo = document.getElementsByClassName("Wonwoo");
    var Woozi = document.getElementsByClassName("Woozi");
    var DK = document.getElementsByClassName("DK");
    var Mingyu = document.getElementsByClassName("Mingyu");
    var The8 = document.getElementsByClassName("The8");
    var Seungkwan = document.getElementsByClassName("Seungkwan");
    var Vernon = document.getElementsByClassName("Vernon");
    var Dino = document.getElementsByClassName("Dino");
    var AllMembers = document.getElementsByClassName("All");
    
    switch (id) {
     case "SCoupstoggle": {
      var e;
      for (e=0; e < SCoups.length; e++)
      {SCoups[e].classList.toggle("on")}
       };
    break;
      case "Jeonghantoggle": {
      var e;
      for (e=0; e < Jeonghan.length; e++)
      {Jeonghan[e].classList.toggle("on")}
       };
      break;
      case "Joshuatoggle": {
      var e;
      for (e=0; e < Joshua.length; e++)
      {Joshua[e].classList.toggle("on")}
       };
      break;
      case "Juntoggle": {
      var e;
      for (e=0; e < Jun.length; e++)
      {Jun[e].classList.toggle("on")}
       };
      break;
      case "Hoshitoggle": {
      var e;
      for (e=0; e < Hoshi.length; e++)
      {Hoshi[e].classList.toggle("on")}
       };
      break;
      case "Wonwootoggle": {
      var e;
      for (e=0; e < Wonwoo.length; e++)
      {Wonwoo[e].classList.toggle("on")}
       };
      break;
      case "Woozitoggle": {
      var e;
      for (e=0; e < Woozi.length; e++)
      {Woozi[e].classList.toggle("on")}
       };
      break;
      case "DKtoggle": {
      var e;
      for (e=0; e < DK.length; e++)
      {DK[e].classList.toggle("on")}
       };
      break;
      case "Mingyutoggle": {
      var e;
      for (e=0; e < Mingyu.length; e++)
      {Mingyu[e].classList.toggle("on")}
       };
      break;
      case "The8toggle": {
      var e;
      for (e=0; e < The8.length; e++)
      {The8[e].classList.toggle("on")}
       };
      break;
      case "Seungkwantoggle": {
      var e;
      for (e=0; e < Seungkwan.length; e++)
      {Seungkwan[e].classList.toggle("on")}
       };
      break;
      case "Vernontoggle": {
      var e;
      for (e=0; e < Vernon.length; e++)
      {Vernon[e].classList.toggle("on")}
       };
      break;
      case "Dinotoggle": {
      var e;
      for (e=0; e < Dino.length; e++)
      {Dino[e].classList.toggle("on")}
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