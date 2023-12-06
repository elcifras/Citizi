import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="qrcode"
export default class extends Controller {
  static targets = [ "modal" ]
  connect() {
    console.log("Hello, Stimulus!")
  }

  popup() {
    console.log("poping out");
    this.modalTarget.classList.toggle("modal-open") ;
    
  }

  close() {
  this.modalTarget.classList.toggle("modal-open") ;
  }
}
