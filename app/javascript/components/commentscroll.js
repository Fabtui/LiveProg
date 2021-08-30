const commentLink = document.querySelector(".band-comment-content")
const commentTarget = document.getElementById("reviews")

const commentScroll = () => {
    if (commentLink) {
    commentLink.addEventListener('click', () => {
      commentTarget.scrollIntoView();
    })
  }
}

export { commentScroll }
