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
    @[translate 'span', 'links.blog'] = 'http://penguinlifelines.wordpress.com/'
    @[translate 'span', 'links.twitter'] = 'http://twitter.com/penguin_watch/'
    @[translate 'span', 'links.facebook'] = 'https://www.facebook.com/PenguinZoo'
    @[translate 'span', 'links.google'] = 'https://plus.google.com/u/1/112444605806295376760/posts'

  organizations: [{
    name: 'University of Oxford'
    description: '''Our science team members are ecologists in the Department of Zoology and computer vision engineers in the Department of Engineering Science. The University of Oxford is a collegiate research institute, which strives to bring together leading academics and students across subjects and from different cultures and countries to foster an intense interdisciplinary approach that inspires outstanding research achievement. '''
  }, {
    name: 'Australian Antarctic Division (AAD)'
    description: '''Researchers at the Australian Antarctic Division pioneered the use of time-lapse cameras in Antarctica to study the population dynamics of Adélie penguins in East Antarctica. The AAD is a leading research institution, which aims to advance Australia’s strategic, scientific, environmental and economic interests in Antarctica and the Southern Ocean.'''
  }, {
    name: 'Darwin Initiative'
    description: '''Generous funding by the Darwin Initiative has played an integral part in the start-up and continuation of this project. The Darwin Initiative is a UK government grants scheme that helps to protect biodiversity and the natural environment through locally based projects worldwide.'''
  }, {
    name: 'Quark Expeditions'
    description: '''Quark Expeditions® has been working closely with Penguin Lifelines since 2010 by providing our team with passage to remote regions in order to help support our study of penguin populations. For over 20 years, Quark Expeditions® has been the leading provider of polar adventure travel. With its diverse fleet of specially equipped vessels and seasoned expedition leaders, they offer travelers unparalleled access to the most remote regions on earth: the Arctic and Antarctica. '''
  }, {
    name: 'Exodus'
    description: '''As part of Exodus' commitment to conservation and responsible travel, the company has generously supported Penguin Lifelines by providing the team with access to fieldwork locations. Exodus is an award winning travel company, which specializes in responsible tourism, providing clients with access to over 500 itineraries across 90 separate countries.'''
  }, {
    name: 'Calgary Zoo'
    description: '''The Calgary Zoo has generously provided funding to expand the project over the past year. The zoo aims to take and inspire action to sustain wildlife and wild places while becoming Canada’s leader in wildlife conservation.'''
  }, {
    name: 'TrailCamPro.com'
    description: '''TrailCamPro has provided affordable cameras, advice on installation and updates, and support throughout the project. TrailCamPro.com is a US-based website, which offers an extensive stock of trail camera equipment and accessories for a range of purposes.'''
  }, {
    name: 'Stony Brook University'
    description: '''We are currently collaborating with researchers in the Department of Ecology and Evolution at Stony Brook University to monitor sea ice extent and create Bayesian hierarchical decision-making tools for policy makers. A member of the prestigious Association of American Universities (AAU), Stony Brook is a leading public research university in the Northeast United States.'''
  }, {
    name: 'Oceanites'
    description: '''Collaborators at Oceanites have helped extensively in servicing the cameras at a range of field sites. Oceanites is a nonprofit, science and educational foundation, which intends to foster the conservation of the world’s oceans, islands, and their wildlife, as well as a better appreciation of the sensitive connections we humans have to our watery globe.'''
  }, {
    name: 'British Antarctic Survey (BAS)'
    description: '''We have provided cameras and consumables to collaborators at the British Antarctic Survey to monitor local penguin populations around the Southern Ocean. BAS is one of the world's leading environmental research centers and is responsible for the UK's national scientific activities in Antarctica.'''
  }, {
    name: 'The Zoological Society of London (ZSL)'
    description: '''ZSL have provided funding, support and technology throughout the project. We work with ZSL to study indicators of penguin success and also on the development of satellite- linked cameras that can survive Antarctica. Founded in 1826, the Zoological Society of London (ZSL) is an international scientific, conservation and educational charity whose mission is to promote and achieve the worldwide conservation of animals and their habitats. '''
  }, {
    name: 'University College London (UCL)'
    description: '''We work with Ben Collen on developing indicators of penguin numbers over time and the threats to their number and have been working with Robin Freeman (now ZSL) on automation of camera analyses. UCL is one of the top universities in the UK, which aims for academic excellence and to conduct research that addresses real-world problems.'''
  }, {
    name: 'Zooniverse'
    url: ['https://www.zooniverse.org/', 'https://www.facebook.com/therealzooniverse', 'https://twitter.com/the_zooniverse', 'https://plus.google.com/+ZooniverseOrgReal', 'https://github.com/zooniverse']
    description: '''The Zooniverse is home to the internet’s largest, most popular and most successful citizen science projects. The Zooniverse and the suite of projects it contains is produced, maintained and developed by the Citizen Science Alliance. The member institutions of the CSA work with many academic and other partners around the world to produce projects that use the efforts and ability of volunteers to help scientists and researchers.'''
  }]

  scientists: [{
    name: 'Tom Hart'
    description: '''Tom is a penguinologist who runs the Penguin Lifelines project at Oxford University. When he is not making up words, he is researching the threats to penguins and how to mitigate them. He has two main interests: population genetics to study the population structure and movement in relation to climate change and using time-lapse cameras to study the timing of breeding. Much like a supercomputer, he gets smarter in colder temperatures. As a consequence, he can often be found thinking in the Southern Ocean.'''
  }, {
    name: 'Caitlin Black'
    description: '''Caitlin is a DPhil student at the University of Oxford, studying how penguins adapt to environmental changes. Her research focuses on the plasticity of behaviors both during the summer breeding season and dark winter months. When she is not sorting through thousands of images or tramping through knee-deep snow in Antarctica, she enjoys cooking and listening to public radio. '''
  }, {
    name: 'Andrew Zisserman'
    description: '''Andrew Zisserman is the Professor of Computer Vision Engineering at the Department of Engineering Science, University of Oxford, where he heads the Visual Geometry Group (www.robots.ox.ac.uk:/~vgg/). He researches visual recognition for images and videos.'''
  }, {
    name: 'Yusuf Aytar'
    description: '''Yusuf is a Post-Doctoral Research Assistant at the University of Oxford, studying computer vision and machine learning. His research focuses on teaching computers how to understand images and detect objects (including penguins) through machine learning. He enjoys playing football, basketball, and travelling.'''
  }, {
    name: 'Colin Southwell'
    description: '''Colin is a Principal Research Scientist in the Australian Antarctic Division. His primary research interests are in providing scientific input to sustainable management of populations and ecosystems and the development of cost-effective methods for large-scale monitoring of seabird and seal populations in the Southern Ocean.'''
  }, {
    name: 'Louise Emerson'
    description: '''Louise is a Senior Research Scientist at the Australian Antarctic Division. Her primary research interests are in Antarctic seabird ecology and conservation. Her research focuses on revealing the drivers of seabird population dynamics, identifying potential threats to seabirds and accounting for the birds needs in relation to fisheries management approaches. She is also passionately interested in educating the next generation of scientists and is actively involved in talking about her work in the classroom.​'''
  }]

  developers: [{
    name: 'Adam McMaster'
    title: 'Infrastructure Engineer'
    location: 'Oxford, UK'
    url: 'https://twitter.com/astopy'
    description: '''Adam is responsible for managing the Zooniverse’s web hosting infrastructure. He has a computer science degree and has worked in web hosting and development for many years. He’s also working on a degree in astronomy with the OU.'''
  }, {
    name: 'Brian Carstensen'
    title: 'UX Developer'
    location: 'Oxford, UK'
    url: 'https://twitter.com/__brian_c__'
    description: '''Brian Carstensen recently moved from Chicago to Oxford. Brian has a degree in graphic design from Columbia College in Chicago, and worked in that field for a number of years before finding a niche in web development.'''
  }, {
    name: 'Campbell Allen'
    title: 'Developer'
    location: 'Oxford, UK'
    description: '''Web developer for the Zooniverse, enjoys building things on the internet while listening to funky tunes.'''
  }, {
    name: 'Chris Lintott'
    title: 'Zooniverse PI'
    location: 'Oxford, UK'
    url: 'https://twitter.com/chrislintott'
    description: '''Astronomer and founder of both Galaxy Zoo and the Zooniverse that grew from it, Chris is interested in how galaxies form and evolve, how citizen science can change the world, and whether the Chicago Fire can get their act together.'''
  }, {
    name: 'Robert Simpson'
    title: 'Researcher and Developer'
    location: 'Oxford, UK'
    url: 'https://twitter.com/orbitingfrog'
    description: '''Robert is a researcher and web developer working in Oxford. He has a PhD is in astrophysics from Cardiff and has been hacking astronomy since 2004. He is the Communications Lead for the Zooniverse and is also PI of the Milky Way Project.'''
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
