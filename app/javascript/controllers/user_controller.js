import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="user"
export default class extends Controller {
  connect() {
    console.log("I am connected!")
  }
  openModal(event) {
    // console.log("Opening modal...")
    // event.preventDefault();
    // this.url = this.element.getAttribute('href')
    // fetch(this.url, {
    //   headers: {
    //     Accept: "text/vnd.turbo-stream.html"
    //   }
    // })
    // .then(response => response.text())
    // .then(html => {
    //   console.log(html);
    //   Turbo.renderStreamMessage(html)
    // })
  }
}