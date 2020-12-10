window.addEventListener('DOMContentLoaded',init,false);

function init() {
     var fieldset = document.getElementsByTagName('input');
    for (var i=0; i <fieldset.length; i++)
    {fieldset[i].addEventListener('click', toggle, false);}
}


function toggle() {   
    var id = this.id;
    var Jihyo = document.getElementsByClassName("Jihyo");
    var Nayeon = document.getElementsByClassName("Nayeon");
    var Jeongyeon = document.getElementsByClassName("Jeongyeon");
    var Momo = document.getElementsByClassName("Momo");
    var Sana = document.getElementsByClassName("Sana");
    var Mina = document.getElementsByClassName("Mina");
    var Dahyun = document.getElementsByClassName("Dahyun");
    var Chaeyoung = document.getElementsByClassName("Chaeyoung");
    var Tzuyu = document.getElementsByClassName("Tzuyu");
    var AllMembers = document.getElementsByClassName("All");
    var NonMember = document.getElementsByClassName("Non-Member");
    
    switch (id) {
     case "Jihyotoggle": {
      var e;
      for (e=0; e < Jihyo.length; e++)
      {Jihyo[e].classList.toggle("on")}
       };
    break;
      case "Nayeontoggle": {
      var e;
      for (e=0; e < Nayeon.length; e++)
      {Nayeon[e].classList.toggle("on")}
       };
      break;
      case "Jeongyeontoggle": {
      var e;
      for (e=0; e < Jeongyeon.length; e++)
      {Jeongyeon[e].classList.toggle("on")}
       };
      break;
      case "Momotoggle": {
      var e;
      for (e=0; e < Momo.length; e++)
      {Momo[e].classList.toggle("on")}
       };
      break;
      case "Sanatoggle": {
      var e;
      for (e=0; e < Sana.length; e++)
      {Sana[e].classList.toggle("on")}
       };
      break;
      case "Minatoggle": {
      var e;
      for (e=0; e < Mina.length; e++)
      {Mina[e].classList.toggle("on")}
       };
      break;
      case "Dahyuntoggle": {
      var e;
      for (e=0; e < Dahyun.length; e++)
      {Dahyun[e].classList.toggle("on")}
       };
      break;
      case "Chaeyoungtoggle": {
      var e;
      for (e=0; e < Chaeyoung.length; e++)
      {Chaeyoung[e].classList.toggle("on")}
       };
      break;
      case "Tzuyutoggle": {
      var e;
      for (e=0; e < Tzuyu.length; e++)
      {Tzuyu[e].classList.toggle("on")}
       };
      break;
             case "AllMemberstoggle": {
      var e;
      for (e=0; e < AllMembers.length; e++)
      {AllMembers[e].classList.toggle("on")}
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