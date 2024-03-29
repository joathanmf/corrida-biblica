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
    const velhoSwitch = document.getElementById('velho_switch');
    const novoSwitch = document.getElementById('novo_switch');

    velhoSwitch.addEventListener('change', function () {
      if (!velhoSwitch.checked && !novoSwitch.checked) {
        novoSwitch.checked = true;
      }
    });

    novoSwitch.addEventListener('change', function () {
      if (!novoSwitch.checked && !velhoSwitch.checked) {
        velhoSwitch.checked = true;
      }
    });
  }
}