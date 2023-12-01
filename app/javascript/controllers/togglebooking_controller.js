import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-booking"
export default class extends Controller {
  static targets = ["togglableActive", "togglablePast", "togglableCancelled", "li"]

  connect() {
    console.log(this.liTargets)
  }

  fireactive(event) {
    if (this.togglableActiveTarget.classList.contains("d-none")) {
      this.togglableActiveTarget.classList.remove("d-none");
      this.togglablePastTarget.classList.add("d-none");
      this.togglableCancelledTarget.classList.add("d-none");
      event.currentTarget.classList.add("active");
    }

    this.liTargets.forEach(element => {
        element.classList.remove("active")
    });
    event.currentTarget.classList.add("active")
  }

  firepast(event) {
    console.log("hey")
    if (this.togglablePastTarget.classList.contains("d-none")) {
      this.togglablePastTarget.classList.remove("d-none");
      this.togglableActiveTarget.classList.add("d-none");
      this.togglableCancelledTarget.classList.add("d-none");
    }
    this.liTargets.forEach(element => {
      element.classList.remove("active")
    });
    event.currentTarget.classList.add("active")
  }

  firecancelled(event) {
    if (this.togglableCancelledTarget.classList.contains("d-none")) {
      this.togglableCancelledTarget.classList.remove("d-none");
      this.togglablePastTarget.classList.add("d-none");
      this.togglableActiveTarget.classList.add("d-none");
    }
    this.liTargets.forEach(element => {
        element.classList.remove("active")
    });
    event.currentTarget.classList.add("active")
  }

}
