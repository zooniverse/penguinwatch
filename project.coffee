Pinpoint = require './pinpoint'

t7e = require 't7e'
enUs = require './en-us'
t7e.load enUs

translate = t7e

module.exports =
  id: 'penguin'

  producer: translate 'div', 'producer'
  title: translate 'div', 'title'
  summary: translate 'div', 'summary'
  description: translate 'div', 'description'
  background: 'penguins-fpo.jpg'

  pages: [
    {'Science': translate 'div', 'science'}
  ]

  tasks:
    penguins:
      type: 'drawing'
      question: translate 'div', 'whatToDo'
      choices: [{
        type: Pinpoint
        value: 'penguin'
        label: translate 'div', 'choices.penguin'
        color: 'cyan'
      }, {
        type: Pinpoint
        value: 'eggs'
        label: translate 'div', 'choices.eggs'
        color: 'magenta'
      }, {
        type: Pinpoint
        value: 'chick'
        label: translate 'div', 'choices.chick'
        color: 'yellow'
      }, {
        type: Pinpoint
        value: 'other'
        label: translate 'div', 'choices.other'
        color: 'black'
        details: [{
          type: 'radio'
          question: 'What is this?'
          key: 'size'
          choices: [{
            value: 'walrus'
            label: translate 'div', 'choices.seal'
          }, {
            value: 'seal'
            label: translate 'div', 'choices.shark'
          }, {
            value: 'shark'
            label: translate 'div', 'choices.walrus'
          }]
        }]
      }]
