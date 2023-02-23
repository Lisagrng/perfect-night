import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.textContent = "Hello World!"

    
  }
}

$(document).ready(function() {
  $(".plus-btn").click(function() {
    var input = $(this).prev();
    var value = parseInt(input.val());
    input.val(value + 1);
  });

  $(".minus-btn").click(function() {
    var input = $(this).next();
    var value = parseInt(input.val());
    if (value > 1) {
      input.val(value - 1);
    }
  });
});
