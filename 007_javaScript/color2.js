// arrow notation
document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('.color-change').forEach(button => {
    button.onclick = () => {
      document.querySelector('#mia').style.color = button.dataset.color;
    };
  });
});
