window.addEventListener('DOMContentLoaded',init,false);

function init() {
     var fieldset = document.getElementsByTagName('input');
    for (var i=0; i <fieldset.length; i++)
    {fieldset[i].addEventListener('click', toggle, false);}
}


function toggle() {   
    var id = this.id;
    var Jisoo = document.getElementsByClassName("Jisoo");
    var Jennie = document.getElementsByClassName("Jennie");
    var Rose = document.getElementsByClassName("Rose");
    var Lisa = document.getElementsByClassName("Lisa");
    var AllMembers = document.getElementsByClassName("All");
    
    switch (id) {
     case "Jisootoggle": {
      var e;
      for (e=0; e < Jisoo.length; e++)
      {Jisoo[e].classList.toggle("on")}
       };
    break;
      case "Jennietoggle": {
      var e;
      for (e=0; e < Jennie.length; e++)
      {Jennie[e].classList.toggle("on")}
       };
      break;
      case "Rosetoggle": {
      var e;
      for (e=0; e < Rose.length; e++)
      {Rose[e].classList.toggle("on")}
       };
      break;
      case "Lisatoggle": {
      var e;
      for (e=0; e < Lisa.length; e++)
      {Lisa[e].classList.toggle("on")}
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