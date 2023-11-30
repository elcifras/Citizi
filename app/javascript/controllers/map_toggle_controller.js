import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map-toggle"
export default class extends Controller {
  static targets = ["map", "list"]
  connect() {
    console.log("lj")
  }

  fire() {
    console.log("Stwrggergdf");
    console.log(this.listTarget)
    this.listTarget.classList.toggle("d-none")
    this.mapTarget.classList.toggle("d-none")
  }
}
