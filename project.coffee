Pinpoint = require './pinpoint'
MagnifierPoint = require 'marking-surface/lib/tools/magnifier-point'

t7e = require 't7e'
enUs = require './en-us'
t7e.load enUs

translate = t7e

# Let's make translating keys easier.
buildObject = (fn) ->
  object = {}
  fn.call object
  object

# decision tree button text
ok = translate 'span', 'ok'

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

  externalLinks: buildObject ->
    @[translate 'span', 'links.talk'] = 'http://talk.penguinwatch.org/'
    @[translate 'span', 'links.blog'] = 'http://penguinlifelines.wordpress.com/'
    @[translate 'span', 'links.twitter'] = 'http://twitter.com/penguin_watch/'
    @[translate 'span', 'links.facebook'] = 'https://www.facebook.com/PenguinZoo'
    @[translate 'span', 'links.google'] = 'https://plus.google.com/u/1/112444605806295376760/posts'

  organizations: [{
    image: './orgs/university-of-oxford.png'
    name: 'University of Oxford'
    description: translate 'div', 'team.oxford'
  }, {
    image: './orgs/australian-antarctic-division.png'
    name: 'Australian Antarctic Division (AAD)'
    description: translate 'div', 'team.aad'
  }, {
    image: './orgs/darwin-initiative.png'
    name: 'Darwin Initiative'
    description: translate 'div', 'team.darwin'
  }, {
    image: './orgs/quark-expeditions.png'
    name: 'Quark Expeditions'
    description: translate 'div', 'team.quark'
  }, {
    image: './orgs/exodus.png'
    name: 'Exodus'
    description: translate 'div', 'team.exodus'
  }, {
    image: './orgs/calgary-zoo.png'
    name: 'Calgary Zoo'
    description: translate 'div', 'team.calgaryZoo'
  }, {
    image: './orgs/trailcampro.png'
    name: 'TrailCamPro.com'
    description: translate 'div', 'team.trailCamPro'
  }, {
    image: './orgs/stony-brook-university.png'
    name: 'Stony Brook University'
    description: translate 'div', 'team.stonyBrook'
  }, {
    image: './orgs/oceanites.png'
    name: 'Oceanites'
    description: translate 'div', 'team.oceanites'
  }, {
    image: './orgs/british-antarctic-survey.png'
    name: 'British Antarctic Survey (BAS)'
    description: translate 'div', 'team.bas'
  }, {
    image: './orgs/zoological-society-of-london.png'
    name: 'The Zoological Society of London (ZSL)'
    description: translate 'div', 'team.zsl'
  }, {
    image: './orgs/university-college-london.png'
    name: 'University College London (UCL)'
    description: translate 'div', 'team.ucl'
  }, {
    image: './orgs/zooniverse.png'
    name: 'Zooniverse'
    url: ['https://www.zooniverse.org/', 'https://www.facebook.com/therealzooniverse', 'https://twitter.com/the_zooniverse', 'https://plus.google.com/+ZooniverseOrgReal', 'https://github.com/zooniverse']
    description: translate 'div', 'team.zooniverse'
  }]

  scientists: [{
    name: 'Tom Hart'
    description: translate 'div', 'team.hart'
  }, {
    name: 'Caitlin Black'
    description: translate 'div', 'team.black'
  }, {
    name: 'Andrew Zisserman'
    description: translate 'div', 'team.zisserman'
  }, {
    name: 'Yusuf Aytar'
    description: translate 'div', 'team.aytar'
  }, {
    name: 'Colin Southwell'
    description: translate 'div', 'team.southwell'
  }, {
    name: 'Louise Emerson'
    description: translate 'div', 'team.emerson'
  }]

  developers: [{
    name: 'Adam McMaster'
    title: 'Infrastructure Engineer'
    url: 'https://twitter.com/astopy'
    description: translate 'div', 'team.master'
  }, {
    name: 'Brian Carstensen'
    title: 'UX Developer'
    url: 'https://twitter.com/__brian_c__'
    description: translate 'div', 'team.carstensen'
  }, {
    name: 'Campbell Allen'
    title: 'Developer'
    description: translate 'div', 'team.allen'
  }, {
    name: 'Chris Lintott'
    title: 'Zooniverse PI'
    url: 'https://twitter.com/chrislintott'
    description: translate 'div', 'team.lintott'
  }, {
    name: 'Robert Simpson'
    title: 'Researcher and Developer'
    url: 'https://twitter.com/orbitingfrog'
    description: translate 'div', 'team.simpson'
  }]

  firstTask: 'animalsPresent'

  tasks:
    animalsPresent:
      type: 'radio'
      confirmButtonLabel: ok
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
      confirmButtonLabel: ok
      question: translate 'div', 'whatToDo'
      choices: [{
        type: MagnifierPoint
        value: 'adult'
        label: translate 'div', 'choices.adult'
        color: '#f90'
        checked: true
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
      confirmButtonLabel: translate 'span', 'finish'
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
  }, {
    label: translate 'span', 'fieldGuide.rockhopper'
    figures: [{
      image: './field-guide/rockhopper-guarded.jpg'
      label: translate 'span', 'fieldGuide.adult'
    }, {
      image: './field-guide/rockhopper-unguarded.jpg'
      label: translate 'span', 'fieldGuide.chick'
    }]
  }]
