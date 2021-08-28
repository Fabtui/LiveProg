import { preventInsignificantClick } from "@rails/ujs"

const participationPopUpClose = () => {
  const container = document.querySelector('#infos-container')
  const close = document.getElementById('participation-popup-close')
  const addParticipation = document.getElementById('add-participation')
  const popUp = document.getElementById('participation-popup')
  if (close) {
    close.addEventListener('click', (e) => {
      popUp.classList.add('hidden')
      popUp.style.transition = "0.5s";
      container.style.opacity = ""
      container.style.filter = "";
    }
    )
  }
}

export { participationPopUpClose }
