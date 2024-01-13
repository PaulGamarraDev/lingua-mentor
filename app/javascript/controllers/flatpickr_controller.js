// app/javascript/controllers/flatpickr_controller.js
import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  // Inform the controller that it has two targets in the form, which are our inputs
  static targets = [ "dateInput", "timeInput" ];

  connect() {
    flatpickr(this.dateInputTarget, {
      minDate: "today",
      maxDate: new Date().fp_incr(365)
    })
    flatpickr(this.timeInputTarget, {
      enableTime: true,
      noCalendar: true,
      dateFormat: "H:i",
      defaultDate: "13:45"
    })
  }
}
