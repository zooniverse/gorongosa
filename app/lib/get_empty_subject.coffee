Subject = require 'zooniverse/models/subject'

module.exports = ->
  
  offline_subjects = []

  #create a subject with a random image from the list of sample offline subjects
  new Subject
    id: 'EMPTY_SUBJECT'
    location: standard: [
      offline_subjects[ Math.floor(Math.random() * offline_subjects.length) ]
    ]
    coords: [2.3308, 34.8333]
    metadata:
      tutorial: false 
      empty: true
      timestamps: [(new Date).toString()]



