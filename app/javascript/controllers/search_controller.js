import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = [ "timeslotdiv" ]
  connect() {
  }

  senddate(event) {
    console.log(event.target.value)
    const url = `?date=${event.target.value}`
    fetch(url, { headers: {'Accept': 'text/plain' } } )
      .then(response => response.text())
      .then((data) => {
        this.timeslotdivTarget.innerHTML = data
        window.scrollTo(0, document.body.scrollHeight)
      })
  }
}
