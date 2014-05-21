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
    marking:
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
            value: 'snowySheathbill'
            image: './other-animals/snowy-sheathbill.jpg'
            label: translate 'div', 'choices.snowySheathbill'
          },{
            value: 'southernGiantPetrel'
            image: './other-animals/southern-giant-petrel.jpg'
            label: translate 'div', 'choices.southernGiantPetrel'
          },{
            value: 'brownSkua'
            image: './other-animals/brown-skua.jpg'
            label: translate 'div', 'choices.brownSkua'
          },{
            value: 'kelpGull'
            image: './other-animals/kelp-gull.jpg'
            label: translate 'div', 'choices.kelpGull'
          },{
            value: 'humans'
            image: './other-animals/humans.jpg'
            label: translate 'div', 'choices.humans'
          },{
            value: 'shipsVessels'
            image: './other-animals/ships.jpg'
            label: translate 'div', 'choices.shipsVessels'
          },]
        }]
      }]
