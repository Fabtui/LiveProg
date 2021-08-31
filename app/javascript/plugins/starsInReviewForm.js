const unselectedStars = (stars) => {
  stars.forEach((star) => {
    star.classList.add("far")
    star.classList.remove("fas")
  })
}

const selectedStars = (stars, target) => {
  stars.forEach((star) => {
    if (star.dataset.starValue <= target.dataset.starValue) {
      star.classList.add("fas")
      star.classList.remove("far")
    }
  })
}

const starReview = () => {
  const form = document.getElementById("new_band_review")
  const input = document.getElementById("band_review_rating")
  if (!form) {return}
  const stars = form.querySelectorAll(".fa-star")

    stars.forEach((star) => {
      star.addEventListener("click", (event) => {
        unselectedStars(stars)
        selectedStars(stars, event.currentTarget)
        input.value = event.currentTarget.dataset.starValue
        form.submit()
      })
    })

}

export { starReview };
