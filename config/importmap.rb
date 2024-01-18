# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "apexcharts" # @3.45.1
# pin "flowbite" # @2.2.1
pin "flowbite", to: "https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.turbo.min.js"
pin "@popperjs/core", to: "@popperjs--core.js" # @2.11.8
pin "flowbite-app.bundle"
pin "flowbit-app-theme"
