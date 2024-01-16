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
    this.seleccion(event);
  }

  showIdiomas(event) {
    this.showSection("idiomas", event);
    this.seleccion(event);
  }

  showCertificados(event) {
    this.showSection("certificados", event);
    this.seleccion(event);
  }

  showDescripcion(event) {
    this.showSection("descripcion", event);
    this.seleccion(event);
  }

  showSiguiendo(event) {
    this.showSection("siguiendo", event);
    this.seleccion(event);
  }

  showDisponibilidad(event) {
    this.showSection("disponibilidad", event);
    this.seleccion(event);
  }

  showVisitantes(event) {
    this.showSection("visitantes", event);
    this.seleccion(event);
  }

  showTarifas(event) {
    this.showSection("tarifas", event);
    this.seleccion(event);
  }

  showAjustes(event) {
    this.showSection("ajustes", event);
    this.seleccion(event);
  }

seleccion(event) {
  console.log("hola")
  const opciones = document.querySelectorAll(".opcion");
  opciones.forEach((opcion) => {
    opcion.addEventListener("click", (event) => {
      event.currentTarget.classList.add("opcion");
    });
  });
}
}


// seleccion(event) {
//   console.log("hola")
//   const opciones = document.querySelectorAll(".opcion");
//   opciones.forEach((opcion) => {
//     opcion.addEventListener("click", (event) => {
//       event.currentTarget.classList.add("opcion");
//     });
//   });
// }