import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log('connected')
  }

  async send_request(event) {
    const csrfToken = document.querySelector('meta[name="csrf-token"]')
    console.log(csrfToken.content)
    const requestOptions = {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': csrfToken.content
      },
    };
    const res = await fetch(`/post/${event.target.value}/publish`, requestOptions)
    console.log(res)
  }
}
