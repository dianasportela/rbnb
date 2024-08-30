import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ['btn', 'form', 'errors']

  connect() {
    // console.log(this.btnTarget);
    // console.log(this.formTarget);
    // console.log(this.errorsTarget);
    this.checkForErrors();
  }

  openForm() {
    this.formTarget.classList.remove("d-none");
  }

  closeForm() {
    this.formTarget.classList.add('d-none');
  }

  checkForErrors() {
    if (this.errorsTarget.innerHTML.trim() !== "") {
      this.openForm();
    }
  }

}
