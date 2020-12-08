window.addEventListener('DOMContentLoaded',init,false);

function init() {
     var fieldset = document.getElementsByTagName('input');
    for (var i=0; i <fieldset.length; i++)
    {fieldset[i].addEventListener('click', toggle, false);}
}


function toggle() {   
    var id = this.id;
    var Renjun = document.getElementsByClassName("Renjun");
    var Jeno = document.getElementsByClassName("Jeno");
    var Haechan = document.getElementsByClassName("Haechan");
    var Jaemin = document.getElementsByClassName("Jaemin");
    var Chenle = document.getElementsByClassName("Chenle");
    var Jisung = document.getElementsByClassName("Jisung");
    var AllMembers = document.getElementsByClassName("All");
    
    switch (id) {
     case "Renjuntoggle": {
      var e;
      for (e=0; e < Renjun.length; e++)
      {Renjun[e].classList.toggle("on")}
       };
    break;
      case "Jenotoggle": {
      var e;
      for (e=0; e < Jeno.length; e++)
      {Jeno[e].classList.toggle("on")}
       };
      break;
      case "Haechantoggle": {
      var e;
      for (e=0; e < Haechan.length; e++)
      {Haechan[e].classList.toggle("on")}
       };
      break;
      case "Jaemintoggle": {
      var e;
      for (e=0; e < Jaemin.length; e++)
      {Jaemin[e].classList.toggle("on")}
       };
      break;
      case "Chenletoggle": {
      var e;
      for (e=0; e < Chenle.length; e++)
      {Chenle[e].classList.toggle("on")}
       };
      break;
      case "Jisungtoggle": {
      var e;
      for (e=0; e < Jisung.length; e++)
      {Jisung[e].classList.toggle("on")}
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