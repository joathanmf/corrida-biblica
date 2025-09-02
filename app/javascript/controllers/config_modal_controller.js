import { Controller } from "@hotwired/stimulus"
import { Modal } from "bootstrap"

export default class extends Controller {
  connect() {
    this.modal = new Modal(this.element)
    this.modal.show()
  }

  hideBeforeRender(event) {
    if (this.isOpen()) {
      event.preventDefault()
      this.element.addEventListener('hidden.bs.modal', event.detail.resume)
      this.modal.hide()
    }
  }

  isOpen() {
    return this.element.classList.contains("show")
  }

  save_config() {
    this.modal.hide()
  }

  checkbox() {
    const oldSwitch = document.getElementById('old_switch');
    const newSwitch = document.getElementById('new_switch');

    oldSwitch.addEventListener('change', function () {
      if (!oldSwitch.checked && !newSwitch.checked) {
        newSwitch.checked = true;
      }
    });

    newSwitch.addEventListener('change', function () {
      if (!newSwitch.checked && !oldSwitch.checked) {
        oldSwitch.checked = true;
      }
    });
  }
}