window.addEventListener('DOMContentLoaded',init,false);

function init() {
     var fieldset = document.getElementsByTagName('input');
    for (var i=0; i <fieldset.length; i++)
    {fieldset[i].addEventListener('click', toggle, false);}
}


function toggle() {   
    var id = this.id;
    var BangChan = document.getElementsByClassName("BangChan");
    var LeeKnow = document.getElementsByClassName("LeeKnow");
    var Changbin = document.getElementsByClassName("Changbin");
    var Hyunjin = document.getElementsByClassName("Hyunjin");
    var Han = document.getElementsByClassName("Han");
    var Felix = document.getElementsByClassName("Felix");
    var Seungmin = document.getElementsByClassName("Seungmin");
    var IN = document.getElementsByClassName("IN");
    var AllMembers = document.getElementsByClassName("All");
    
    switch (id) {
     case "BangChantoggle": {
      var e;
      for (e=0; e < BangChan.length; e++)
      {BangChan[e].classList.toggle("on")}
       };
    break;
      case "LeeKnowtoggle": {
      var e;
      for (e=0; e < LeeKnow.length; e++)
      {LeeKnow[e].classList.toggle("on")}
       };
      break;
      case "Changbintoggle": {
      var e;
      for (e=0; e < Changbin.length; e++)
      {Changbin[e].classList.toggle("on")}
       };
      break;
      case "Hyunjintoggle": {
      var e;
      for (e=0; e < Hyunjin.length; e++)
      {Hyunjin[e].classList.toggle("on")}
       };
      break;
      case "Hantoggle": {
      var e;
      for (e=0; e < Han.length; e++)
      {Han[e].classList.toggle("on")}
       };
      break;
      case "Felixtoggle": {
      var e;
      for (e=0; e < Felix.length; e++)
      {Felix[e].classList.toggle("on")}
       };
      break;
      case "Seungmintoggle": {
      var e;
      for (e=0; e < Seungmin.length; e++)
      {Seungmin[e].classList.toggle("on")}
       };
      break;
      case "INtoggle": {
      var e;
      for (e=0; e < IN.length; e++)
      {IN[e].classList.toggle("on")}
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