import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = [
    'form',
    'input'
  ]

  connect() {
    this.inputTarget.focus()
    this.inputTarget.select()
  }

  save() {
    this.formTarget.requestSubmit()
  }

  cancel() {
    window.location.reload() // TODO: replace this by a mechanism that doesn't refresh the entire page
  }
}
