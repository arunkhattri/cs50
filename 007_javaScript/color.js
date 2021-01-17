document.addEventListener('DOMContentLoaded', function() {
  // change font color to red
  document.querySelector('#red').onclick = function() {
    document.querySelector('#mia').style.color = 'red';
  };
  // change font color to blue
  document.querySelector('#blue').onclick = function() {
    document.querySelector('#mia').style.color = 'blue';
  };
  // change font color to green
  document.querySelector('#green').onclick = function() {
    document.querySelector('#mia').style.color = 'green';
  };
})
