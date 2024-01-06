import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="profile"
export default class extends Controller {
  static targets = [ "acerca", "idiomas" ]
  connect() {
  }
  showAcerca(event) {
    event.preventDefault()
    this.idiomasTarget.classList.add("d-none")
    this.acercaTarget.classList.remove("d-none")
  }

  showIdiomas(event) {
    event.preventDefault()
    this.acercaTarget.classList.add("d-none")
    this.idiomasTarget.classList.remove("d-none")
  }
}
