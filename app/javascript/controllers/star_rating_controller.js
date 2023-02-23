import { Controller } from "@hotwired/stimulus"
import StarRating from "star-rating.js"


export default class extends Controller {
  // static target = ["star-rating-element"]
  connect() {

    new StarRating(this.element, { tooltip: false })

  }
}