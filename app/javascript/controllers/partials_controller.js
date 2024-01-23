import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = [
    'form',
    'input'
  ]

  static values = {
    cancelUrl: String
  }

  connect() {
    this.inputTarget.focus()
    this.inputTarget.select()
  }

  save() {
    this.formTarget.requestSubmit()
  }

  cancel() {
    // TODO: validate if this is the best approach to cancel the edition
    this.formTarget.action = this.cancelUrlValue
    this.formTarget.method = 'GET'
    this.formTarget.requestSubmit()
  }
}
