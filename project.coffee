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
      choices: [
        value: 'point'
        label: translate 'div', 'penguinLabel'
      ]
