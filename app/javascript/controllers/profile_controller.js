import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["acerca", "idiomas", "certificados", "descripcion", "siguiendo", "disponibilidad", "visitantes", "tarifas", "ajustes",]

  connect() {
    this.showSection("acerca");
  }

  showSection(sectionName, event) { // Método para alternar la visibilidad de las secciones
    if (event) {
      event.preventDefault();
    }

    const sections = ["acerca", "idiomas", "certificados", "descripcion", "siguiendo", "disponibilidad", "visitantes", "tarifas", "ajustes"];

    sections.forEach((target) => {   // Alterna la visibilidad para cada sección según el nombre de la sección proporcionado
      const isTarget = target === sectionName;
      this[`${target}Target`].classList.toggle("d-none", !isTarget);
    });
  }

  showAcerca(event) {     // Métodos para mostrar secciones específicas (llamados desde los botones)
    this.showSection("acerca", event);
  }

  showIdiomas(event) {
    this.showSection("idiomas", event);
  }

  showCertificados(event) {
    this.showSection("certificados", event);
  }

  showDescripcion(event) {
    this.showSection("descripcion", event);
  }

  showSiguiendo(event) {
    this.showSection("siguiendo", event);
  }

  showDisponibilidad(event) {
    this.showSection("disponibilidad", event);
  }

  showVisitantes(event) {
    this.showSection("visitantes", event);
  }

  showTarifas(event) {
    this.showSection("tarifas", event);
  }

  showAjustes(event) {
    this.showSection("ajustes", event);
  }
}
