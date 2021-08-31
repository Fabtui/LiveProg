const upButton = document.querySelector("#up-button")
const upButtonTarget = document.querySelector(".user-events-cotainer")

const mapUpScroll = () => {
    if (upButton) {
    upButton.addEventListener('click', () => {
      upButtonTarget.scrollIntoView();
    })
  }
}

export { mapUpScroll }
