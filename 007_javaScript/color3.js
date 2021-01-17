document.addEventListener('DOMContentLoaded', () => {
  // change the color of the heading when dropdown changes
  document.querySelector('#color-change').onchange = function() {
    document.querySelector('#mia').style.color = this.value;
  };
});


