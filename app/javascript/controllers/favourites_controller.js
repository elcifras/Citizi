import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
  }

  addFavourite(event) {
    console.log("addFavourite")
    event.preventDefault()
    const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
    const favouriteButton = event.currentTarget
    const serviceId = favouriteButton.dataset.serviceId
    const requestInfo = {
      method: "POST",
      headers: { "Accept": "application/json", 'X-CSRF-Token': token, "Content-Type": "application/json" }
    }

    fetch(`/favourites?service_id=${serviceId}`, requestInfo)
      .then(response => response.json())
      .then((data) => {
        this.element.outerHTML = data.inserted;
      });
  }

  deleteFavourite(event) {
    console.log("addFavourite")

    event.preventDefault()
    const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
    const favouriteButton = event.currentTarget
    const serviceId = favouriteButton.dataset.serviceId
    const requestInfo = {
      method: "DELETE",
      headers: { "Accept": "application/json", 'X-CSRF-Token': token, "Content-Type": "application/json" }
    }

    fetch(event.currentTarget.href, requestInfo)
      .then(response => response.json())
      .then((data) => {
        this.element.outerHTML = data.inserted;
      });
  }
}
