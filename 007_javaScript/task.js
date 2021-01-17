document.addEventListener('DOMContentLoaded', () => {
  document.querySelector('#new-task').onsubmit = () => {
    // create new item for list
    const li = document.createElement('li');
    li.innerHTML = document.querySelector('#task').value;

    // add new item to task list
    document.querySelector('#tasks').append(li);

    // clear input field
    document.querySelector('#tasks').value = '';

    // stop form from submitting
    return false;
  };
});
