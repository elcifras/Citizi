import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="rating"
export default class extends Controller {
  static targets = ["ratinginput", "ratingstar"]

  connect() {
    console.log("hello from rating controller")
  }

  // Display the stars according to the rating
  display(event) {
    console.log("hello from display")
    const rating = parseInt(event.target.id)
    this.ratingstarTargets.forEach((star) => {
      if (parseInt(star.id) <= rating) {
        star.className = "review-rating fas fa-star"
      } else {
        star.className = "review-rating far fa-star"
      }
    });
    this.ratinginputTarget.value = rating
  }

  // Retrieve the value of the star clicked
  // and send it to the server
    ratingValue = (rating) => {
    const input = this.ratinginputTarget.id
    input.value = rating
  }

  // Display the stars according to the rating




}
