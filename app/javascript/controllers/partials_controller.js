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

  submitForm() {
    this.formTarget.requestSubmit()
  }
}
