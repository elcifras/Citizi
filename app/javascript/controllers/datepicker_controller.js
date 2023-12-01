import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  connect() {
    console.log(this.element)
    flatpickr(this.element, {
      minDate: "2023-12"
  })
  }
}
