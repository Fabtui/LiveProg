const editButtonShow = () => {
  event.preventDefault();
  const editButton = document.getElementById('edit-button')
  const editForm = document.querySelector('.edit-form')
  editButton.addEventListener('click', (e) => {
    editForm.classList.toggle('hidden')
  })
}

export { editButtonShow }
