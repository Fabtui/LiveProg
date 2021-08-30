import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    dateFormat: "Y-m-d",
    minDate: "today",
    mode: "range"
  });
}

export { initFlatpickr };
