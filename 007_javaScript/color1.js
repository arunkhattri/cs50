document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll('.color-change').forEach(function(button) {
    button.onclick = function() {
      document.querySelector('#mia').style.color = button.dataset.color;
    };
  });
});
