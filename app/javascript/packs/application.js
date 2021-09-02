// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import { carouselSlide } from "../components/carousel"
import { editButtonShow } from "../components/editbutton"
import { participationPopUpClose } from "../components/participationpopup"
import { commentScroll } from "../components/commentscroll"
import { initFlatpickr } from "../plugins/flatpickr";
import { mapUpScroll } from "../components/mapupscroll";


Rails.start()
Turbolinks.start()
ActiveStorage.start()
initFlatpickr();


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports

import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox'
import { starReview } from '../plugins/starsInReviewForm'
// Internal imports, e.g:
import { initSelect2 } from '../components/init_select2';



document.addEventListener('turbolinks:load', () => {
  initSelect2();
  editButtonShow();
  participationPopUpClose();
  initMapbox();
  commentScroll();
  starReview();
  mapUpScroll();
});
