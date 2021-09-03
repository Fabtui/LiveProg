import $ from 'jquery'
import 'select2'

const initSelect2 = () => {
  $('#search_band_style').select2()

  $('.select2-selection')
    .prepend("Par style")
    .addClass("form-control")
    .css("font-family", "Nunito")
    .css("color", "#6d757d")

}
export { initSelect2 }
