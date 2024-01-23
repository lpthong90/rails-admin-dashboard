import { Application } from "@hotwired/stimulus"
import { Modal } from "tailwindcss-stimulus-components"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

application.register('modal', Modal)

export { application }
