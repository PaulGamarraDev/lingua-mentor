# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "flatpickr", to: "https://ga.jspm.io/npm:flatpickr@4.6.13/dist/esm/index.js", preload: true
# Añadido a través de terminal usando instrucción: importmap pin "@rails/actioncable" --from jsdelivr
pin "@rails/actioncable", to: "https://cdn.jsdelivr.net/npm/@rails/actioncable@7.1.2/app/assets/javascripts/actioncable.esm.js"
#pin "@rails/actioncable", to: "actioncable.esm.js"
pin "star-rating.js", to: "https://cdn.jsdelivr.net/npm/star-rating.js@4.3.0/dist/star-rating.esm.js"
