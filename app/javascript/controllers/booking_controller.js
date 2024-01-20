import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking"
export default class extends Controller {
  static targets = [ "pendientes", "programadas", "historial", "favoritos" ]
  connect() {
    this.pendientesTarget.classList.add("d-none");
    this.historialTarget.classList.add("d-none");
    this.favoritosTarget.classList.add("d-none");
    this.programadasTarget.classList.remove("d-none");
  }
  indexPendientes(event) {
    event.preventDefault();
    this.programadasTarget.classList.add("d-none");
    this.historialTarget.classList.add("d-none");
    this.favoritosTarget.classList.add("d-none");
    this.pendientesTarget.classList.remove("d-none");
  }
  indexProgramadas(event) {
    event.preventDefault();
    this.pendientesTarget.classList.add("d-none");
    this.historialTarget.classList.add("d-none");
    this.favoritosTarget.classList.add("d-none");
    this.programadasTarget.classList.remove("d-none");
  }
  indexHistorial(event) {
    event.preventDefault();
    this.pendientesTarget.classList.add("d-none");
    this.programadasTarget.classList.add("d-none");
    this.favoritosTarget.classList.add("d-none");
    this.historialTarget.classList.remove("d-none");
  }
  indexFavoritos(event) {
    event.preventDefault();
    this.pendientesTarget.classList.add("d-none");
    this.programadasTarget.classList.add("d-none");
    this.historialTarget.classList.add("d-none");
    this.favoritosTarget.classList.remove("d-none");
  }
}

