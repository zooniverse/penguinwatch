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

  tasks:
    penguins:
      type: 'drawing'
      question: translate 'div', 'whatToDo'
      choices: [{
        value: Pinpoint
        label: translate 'div', 'choices.penguin'
        color: 'cyan'
      }, {
        value: Pinpoint
        label: translate 'div', 'choices.eggs'
        color: 'magenta'
      }, {
        value: Pinpoint
        label: translate 'div', 'choices.chick'
        color: 'yellow'
      }, {
        value: Pinpoint
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
