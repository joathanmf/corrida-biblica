import { Controller } from "@hotwired/stimulus"
// import { Timer } from "easytimer.js"

export default class extends Controller {
  btnStart = document.getElementById('btnStart');
  btnStop = document.getElementById('btnStop');

  startChallenge() {
    this.btnStart.innerHTML = "Próximo"
    this.btnStop.classList.remove('disabled');
  }

  stopChallenge(event) {
    event.preventDefault();

    this.btnStart.innerHTML = "Recomeçar";
    this.btnStop.classList.add('disabled');
  }
}