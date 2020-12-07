window.addEventListener('DOMContentLoaded',init,false);

function init() {
     var fieldset = document.getElementsByTagName('input');
    for (var i=0; i <fieldset.length; i++)
    {fieldset[i].addEventListener('click', toggle, false);}
}


function toggle() {   
    var id = this.id;
    var RM = document.getElementsByClassName("RM");
    var Jin = document.getElementsByClassName("Jin");
    var Suga = document.getElementsByClassName("Suga");
    var JHope = document.getElementsByClassName("J-Hope");
    var Jimin = document.getElementsByClassName("Jimin");
    var V = document.getElementsByClassName("V");
    var Jungkook = document.getElementsByClassName("Jungkook");
    var NonMember = document.getElementsByClassName("Non-Member");
    var AllLines = document.getElementsByClassName("song_line");
    var checkboxes = document.getElementsByTagName('input');
    
    switch (id) {
     case "RMtoggle": {
      var e;
      for (e=0; e < RM.length; e++)
      {RM[e].classList.toggle("on")}
       };
    break;
      case "Jintoggle": {
      var e;
      for (e=0; e < Jin.length; e++)
      {Jin[e].classList.toggle("on")}
       };
      break;
      case "Sugatoggle": {
      var e;
      for (e=0; e < Suga.length; e++)
      {Suga[e].classList.toggle("on")}
       };
      break;
      case "JHopetoggle": {
      var e;
      for (e=0; e < JHope.length; e++)
      {JHope[e].classList.toggle("on")}
       };
      break;
      case "Jimintoggle": {
      var e;
      for (e=0; e < Jimin.length; e++)
      {Jimin[e].classList.toggle("on")}
       };
      break;
      case "Vtoggle": {
      var e;
      for (e=0; e < V.length; e++)
      {V[e].classList.toggle("on")}
       };
      break;
      case "Jungkooktoggle": {
      var e;
      for (e=0; e < Jungkook.length; e++)
      {Jungkook[e].classList.toggle("on")}
       };
      break;
            case "NonMembertoggle": {
      var e;
      for (e=0; e < NonMember.length; e++)
      {NonMember[e].classList.toggle("on")}
       };
      break;
            case "Alltoggle": {
      var e;
      for (e=0; e < AllLines.length; e++)
      {AllLines[e].classList.toggle("on")}
      for (var checkbox of checkboxes) {
       checkbox.checked = this.checked;}
       };
      break;
      }
}