Pinpoint = require './pinpoint'
MagnifierPoint = require 'marking-surface/lib/tools/magnifier-point'

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

  scientists: [{
    name: 'Andrew Zisserman'
  }, {
    name: 'Caitlin Black'
  }, {
    name: 'Tom Hart'
  }, {
    name: 'Yusuf Aytar'
  }]

  developers: [{
    name: "Adam McMaster"
    title: "Infrastructure Engineer"
    location: "Oxford, UK"
    description: "Adam is responsible for managing the Zooniverse's web hosting infrastructure. He has a computer science degree and has worked in web hosting and development for many years. He's also working on a degree in astronomy with the OU."
    url: ["https://twitter.com/astopy"]
  }, {
    name: "Brian Carstensen"
    title: "UX Developer"
    location: "Oxford, UK"
    description: "Brian Carstensen recently moved from Chicago to Oxford. Brian has a degree in graphic design from Columbia College in Chicago, and worked in that field for a number of years before finding a niche in web development."
    url: ["https://twitter.com/__brian_c__"]
  }, {
    name: "Campbell Allen"
    title: "Developer"
    location: "Oxford, UK"
    description: "Web developer for the Zooniverse, enjoys building things on the internet while listening to funky tunes."
  }, {
    name: "Chris Lintott"
    title: "Zooniverse PI"
    location: "Oxford, UK"
    description: "Astronomer and founder of both Galaxy Zoo and the Zooniverse that grew from it, Chris is interested in how galaxies form and evolve, how citizen science can change the world, and whether the Chicago Fire can get their act together."
    url: ["https://twitter.com/chrislintott"]
  }, {
    name: "Robert Simpson"
    title: "Researcher and Developer"
    location: "Oxford, UK"
    description: "Robert is a researcher and web developer working in Oxford. He has a PhD is in astrophysics from Cardiff and has been hacking astronomy since 2004. He is the Communications Lead for the Zooniverse and is also PI of the Milky Way Project."
    url: ["https://twitter.com/orbitingfrog"]
  }]

  firstTask: 'animalsPresent'

  tasks:
    animalsPresent:
      type: 'radio'
      question: translate 'div', 'anyAnimals'
      choices: [{
        value: 'yes'
        label: translate 'div', 'yesAnimals'
        next: 'marking'
      }, {
        value: 'no'
        label: translate 'div', 'noAnimals'
      }, {
        value: 'cant_tell'
        label: translate 'div', 'cantTellAnimals'
      }]

    marking:
      type: 'drawing'
      question: translate 'div', 'whatToDo'
      choices: [{
        type: MagnifierPoint
        value: 'adult'
        label: translate 'div', 'choices.adult'
        color: '#f90'
      }, {
        type: MagnifierPoint
        value: 'chick'
        label: translate 'div', 'choices.chick'
        color: '#9f0'
      }, {
        type: MagnifierPoint
        value: 'eggs'
        label: translate 'div', 'choices.eggs'
        color: '#ff0'
      }, {
        type: 'point'
        value: 'other'
        label: translate 'div', 'choices.other'
        color: '#09f'
        details: [{
          type: 'radio'
          question: 'What is this?'
          key: 'size'
          choices: [{
            value: 'snowySheathbill'
            image: './other-animals/snowy-sheathbill.jpg'
            label: translate 'div', 'choices.snowySheathbill'
          }, {
            value: 'southernGiantPetrel'
            image: './other-animals/southern-giant-petrel.jpg'
            label: translate 'div', 'choices.southernGiantPetrel'
          }, {
            value: 'brownSkua'
            image: './other-animals/brown-skua.jpg'
            label: translate 'div', 'choices.brownSkua'
          }, {
            value: 'kelpGull'
            image: './other-animals/kelp-gull.jpg'
            label: translate 'div', 'choices.kelpGull'
          }, {
            value: 'humans'
            image: './other-animals/humans.jpg'
            label: translate 'div', 'choices.humans'
          }, {
            value: 'shipsVessels'
            image: './other-animals/ships.jpg'
            label: translate 'div', 'choices.shipsVessels'
          }]
        }]
      }]
      next: 'allPenguinsMarked'

    allPenguinsMarked:
      type: 'radio'
      question: translate 'div', 'allMarked'
      choices: [{
        value: 'complete'
        label: translate 'div', 'yesAllMarked'
      }, {
        value: 'incomplete'
        label: translate 'div', 'notAllMarked'
      }]

  tutorialSteps: [{
    image: './tutorial/intro.jpg'
    content: translate 'p', 'tutorial.welcome'
  }, {
    image: './tutorial/marked.jpg'
    content: translate 'p', 'tutorial.marking'
  }, {
    image: './tutorial/marked.jpg'
    content: translate 'p', 'tutorial.removing'
  }, {
    image: './tutorial/other.jpg'
    content: translate 'p', 'tutorial.other'
  }, {
    image: './tutorial/talk.jpg'
    content: translate 'p', 'tutorial.talk'
  }]

  examples: [{
    label: translate 'span', 'fieldGuide.gentoo'
    figures: [{
      image: './field-guide/gentoo-guarded.png'
      label: translate 'span', 'fieldGuide.adult'
    }, {
      image: './field-guide/gentoo-unguarded.png'
      label: translate 'span', 'fieldGuide.chick'
    }]
  }, {
    label: translate 'span', 'fieldGuide.chinstrap'
    figures: [{
      image: './field-guide/chinstrap-guarded.jpg'
      label: translate 'span', 'fieldGuide.adult'
    }, {
      image: './field-guide/chinstrap-unguarded.png'
      label: translate 'span', 'fieldGuide.chick'
    }]
  }, {
    label: translate 'span', 'fieldGuide.adelie'
    figures: [{
      image: './field-guide/adelie-guarded.png'
      label: translate 'span', 'fieldGuide.adult'
    }, {
      image: './field-guide/adelie-unguarded.png'
      label: translate 'span', 'fieldGuide.chick'
    }]
  }, {
    label: translate 'span', 'fieldGuide.king'
    figures: [{
      image: './field-guide/king-guarded.png'
      label: translate 'span', 'fieldGuide.adult'
    }, {
      image: './field-guide/king-unguarded.png'
      label: translate 'span', 'fieldGuide.chick'
    }]
  }]
