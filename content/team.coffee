translate = require 't7e'

module.exports =
  organizations: 
    title: translate 'span', 'team.organisations'
    members: [{
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
      image: './orgs/noaa-fisheries.png'
      name: 'NOAA Fisheries'
      description: translate 'div', 'team.noaa'
    }, {
      image: './orgs/zooniverse.png'
      name: 'Zooniverse'
      url: ['https://www.zooniverse.org/', 'https://www.facebook.com/therealzooniverse', 'https://twitter.com/the_zooniverse', 'https://plus.google.com/+ZooniverseOrgReal', 'https://github.com/zooniverse']
      description: translate 'div', 'team.zooniverse'
    }]

  scientists: 
    title: translate 'span', 'team.scientists'
    members: [{
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

  developers: 
    title: translate 'span', 'team.developers'
    members: [{
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