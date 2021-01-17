document.addEventListener('DOMContentLoaded', function() {
  document.querySelector('#form').onsubmit = function() {
    const first_name = document.querySelector('#firstname').value;
    const last_name = document.querySelector('#lastname').value;
    alert(`Hello ${first_name} ${last_name} !`);
  };
});
