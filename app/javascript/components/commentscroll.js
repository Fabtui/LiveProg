const commentScroll = () => {
  const commentLink = document.querySelector(".band-comment-content")
  const commentTarget = document.getElementById("reviews")
    if (commentLink) {
    commentLink.addEventListener('click', () => {
      commentTarget.scrollIntoView();
    })
  }
}

export { commentScroll }
