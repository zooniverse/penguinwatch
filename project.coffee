Pinpoint = require './pinpoint'
MagnifierPoint = require 'marking-surface/lib/tools/magnifier-point'
teamPage = require './templates/team-page'
team = require './content/team'

t7e = require 't7e'
zooTranslate = require 'zooniverse/lib/translate'
enUs = require './lib/en-us'
t7e.load enUs

languageManager = new zooniverse.LanguageManager({
  translations: {
    en: label: "English", strings: enUs
    es: label: "Español", strings: "./translations/es.json"
    # ru: label: "русский", strings: './translations/ru.json'
    cs: label: 'Čeština', strings: './translations/cs.json'
  }
})

languageManager.on('change-language', (e, code, languageStrings) ->
  t7e.load(languageStrings)
  t7e.refresh()
)

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

  pages: [{
    key: 'science'
    title: translate 'span', 'scienceTitle'
    content: translate 'div', 'science'
  },{
    key: 'team'
    title: zooTranslate 'span', 'readymade.team'
    content: teamPage team
  }]

  externalLinks: buildObject ->
    @[translate 'span', 'links.faq'] = 'http://talk.penguinwatch.org/#/boards/BPZ0000007'
    @[translate 'span', 'links.talk'] = 'http://talk.penguinwatch.org/'
    @[translate 'span', 'links.blog'] = 'http://penguinlifelines.wordpress.com/'
    @[translate 'span', 'links.twitter'] = 'http://twitter.com/penguin_watch/'
    @[translate 'span', 'links.facebook'] = 'https://www.facebook.com/PenguinZoo'
    @[translate 'span', 'links.google'] = 'https://plus.google.com/u/1/112444605806295376760/posts'

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
      confirmButtonLabel: translate 'span', 'finishMarking'
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
