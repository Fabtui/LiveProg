const mapUpScroll = () => {
  const upButton = document.querySelector("#up-button")
  const upButtonTarget = document.querySelector(".user-events-cotainer")
  if (upButton) {
    upButton.addEventListener('click', () => {
      upButtonTarget.scrollIntoView();
    })
  }
}

export { mapUpScroll }
