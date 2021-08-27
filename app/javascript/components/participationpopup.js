import { preventInsignificantClick } from "@rails/ujs"

const participationPopUp = () => {
  const container = document.querySelector('#infos-container')
  const close = document.getElementById('participation-popup-close')
  const addParticipation = document.getElementById('add-participation')
  const popUp = document.getElementById('participation-popup')
  // addParticipation.addEventListener('click', (e) => {
  //   popUp.classList.remove('hidden')
  //   container.style.opacity = "0.5"
  //   // container.style.filter = "blur(3px)";
  // }
  // )

  close.addEventListener('click', (e) => {
    // event.preventDefault();
    popUp.classList.add('hidden')
    popUp.style.transition = "0.5s";
    container.style.opacity = ""
    container.style.filter = "";
  }
  )
}

export { participationPopUp }
