const carouselSlide = () => {
const gap = 16;

const carousel = document.querySelector(".carousel"),
  content = document.getElementById("content"),
  next = document.getElementById("next"),
  prev = document.getElementById("prev");

if (carousel) {
  next.addEventListener("click", e => {
    carousel.scrollBy(width + gap, 0);
    if (carousel.scrollWidth !== 0) {
      prev.style.display = "flex";
    }
    if (content.scrollWidth - width - gap <= carousel.scrollLeft + width) {
      next.style.display = "none";
    }
  });
  prev.addEventListener("click", e => {
    carousel.scrollBy(-(width + gap), 0);
    if (carousel.scrollLeft - width - gap <= 0) {
      prev.style.display = "none";
    }
    if (!content.scrollWidth - width - gap <= carousel.scrollLeft + width) {
      next.style.display = "flex";
    }
  });

  let width = carousel.offsetWidth;
  window.addEventListener("resize", e => (width = carousel.offsetWidth));

  const slider = document.querySelector('#carousel');
  let isDown = false;
  let startX;
  let scrollLeft;

  slider.addEventListener('mousedown', e => {
    isDown = true;
    slider.classList.add('active');
    startX = e.pageX - slider.offsetLeft;
    scrollLeft = slider.scrollLeft;
  });
  slider.addEventListener('mouseleave', _ => {
    isDown = false;
    slider.classList.remove('active');
  });
  slider.addEventListener('mouseup', _ => {
    isDown = false;
    slider.classList.remove('active');
  });
  slider.addEventListener('mousemove', e => {
    if (!isDown) return;
    e.preventDefault();
    const x = e.pageX - slider.offsetLeft;
    const SCROLL_SPEED = 3;
    const walk = (x - startX) * SCROLL_SPEED;
    slider.scrollLeft = scrollLeft - walk;
  });
}
}
export { carouselSlide }
