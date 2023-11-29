import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home"
export default class extends Controller {
  connect() {
    this.flipText()
  }
  static targets = ["flipText"]

  flipText() {
    let i = 0
    const words = this.flipTextTargets
    function textFlipper() {
    words[i].classList.add("d-none");
    i = (i + 1) % words.length;
    words[i].classList.remove("d-none")
    } console.log("flipping")
    setInterval(textFlipper, 2000)
  }
}
