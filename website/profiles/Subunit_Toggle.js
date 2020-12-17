window.addEventListener('DOMContentLoaded',init,false);
function init() {
var buttons = document.getElementsByTagName('button');
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].addEventListener('click', toggle, false);     
}
}
function toggle() {
/*window.alert("function lineShow is firing, and this.id is: " + this.id);*/
    hideOthers()
    var divID = 'subunit' + this.id
    var selDiv = document.getElementById(divID)
    selDiv.style.display= 'block';
}

function hideOthers() {
var divs = document.getElementsByClassName('group_subunit_div')
for (var d = 0; d < divs.length; d++) 
divs[d].style.display='none';
}