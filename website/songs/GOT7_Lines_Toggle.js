window.addEventListener('DOMContentLoaded',init,false);

function init() {
     var fieldset = document.getElementsByTagName('input');
    for (var i=0; i <fieldset.length; i++)
    {fieldset[i].addEventListener('click', toggle, false);}
}


function toggle() {   
    var id = this.id;
    var JB = document.getElementsByClassName("JB");
    var MarkTuan = document.getElementsByClassName("MarkTuan");
    var Jackson = document.getElementsByClassName("Jackson");
    var Jinyoung = document.getElementsByClassName("Jinyoung");
    var Youngjae = document.getElementsByClassName("Youngjae");
    var BamBam = document.getElementsByClassName("BamBam");
    var Yugyeom = document.getElementsByClassName("Yugyeom");
    
    switch (id) {
     case "JBtoggle": {
      var e;
      for (e=0; e < JB.length; e++)
      {JB[e].classList.toggle("on")}
       };
    break;
      case "MarkTuantoggle": {
      var e;
      for (e=0; e < MarkTuan.length; e++)
      {MarkTuan[e].classList.toggle("on")}
       };
      break;
      case "Jacksontoggle": {
      var e;
      for (e=0; e < Jackson.length; e++)
      {Jackson[e].classList.toggle("on")}
       };
      break;
      case "Jinyoungtoggle": {
      var e;
      for (e=0; e < Jinyoung.length; e++)
      {Jinyoung[e].classList.toggle("on")}
       };
      break;
      case "Youngjaetoggle": {
      var e;
      for (e=0; e < Youngjae.length; e++)
      {Youngjae[e].classList.toggle("on")}
       };
      break;
      case "BamBamtoggle": {
      var e;
      for (e=0; e < BamBam.length; e++)
      {BamBam[e].classList.toggle("on")}
       };
      break;
      case "Yugyeomtoggle": {
      var e;
      for (e=0; e < Yugyeom.length; e++)
      {Yugyeom[e].classList.toggle("on")}
       };
      break;
      }
}