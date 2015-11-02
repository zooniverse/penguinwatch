module.exports =
  producer: 'Zooniverse'
  title: 'Penguin Watch'
  summary: 'Monitor Penguins in Remote Regions'
  description: 'Scientists have travelled to some of the coldest areas on the planet to learn more about penguin populations. Help annotate their images of wildlife in Antarctica and the Southern Ocean.'

  links:
    home: 'Home'
    classify: 'Classify'
    profile: 'Profile'
    science: 'Science'
    team: 'Team'
    faq: 'FAQ'
    talk: 'Discuss'
    blog: 'Blog'
    twitter: '<i class="fa fa-twitter fa-lg"></i>'
    facebook: '<i class="fa fa-facebook-square fa-lg"></i>'
    google: '<i class="fa fa-google-plus fa-lg"></i>'

  classificationCount: 'images classified'
  userCount: 'volunteers participating'

  scienceTitle: 'Science'
  science: "
    <section>#{require '../content/science'}</section>
    <section>#{require '../content/science-sidebar'}</section>
  "

  anyAnimals: 'Are there any penguins or other animals in this image?'
  yesAnimals: 'Yes'
  noAnimals: 'No, there are no animals present'
  cantTellAnimals: 'I can\'t tell'

  whatToDo: 'For each type of animals in the image, select it from the list, then click to mark its center.'
  choices:
    adult: 'Adults'
    chick: 'Chicks'
    eggs: 'Eggs'
    other: 'Other'
    whatIsIt: 'What is this?'
    snowySheathbill: 'Snowy sheathbill'
    southernGiantPetrel: 'Southern giant petrel'
    brownSkua: 'Brown skua'
    kelpGull: 'Kelp gull'
    humans: 'Humans'
    shipsVessels: 'Ships/vessels'

  limitNumberOfMarks: '''
    You've marked 30. Feel free to move on to the next image.
    Several people will see each image, so we won't miss anything.<br /><br />
    Thanks for your hard work!
  '''

  limitNumberOfMarksDismiss: 'Got it'

  allMarked: 'Have you marked every penguin you can see in this image, or are there still some left unmarked?'
  yesAllMarked: 'I have marked every penguin'
  notAllMarked: 'There were too many penguins to mark'
  finish: 'Finish'
  ok: 'OK'
  finishMarking: 'Finished Marking'

  tutorial:
    welcome: 'Penguin Watch is a citizen science website trying to understand the lives of penguins. We want you to help us mark images taken from nesting sites around Antarctica.'
    marking: 'Individually mark <span style="color: #f90;">adult penguins</span>, <span style="color: #6f0;">chicks</span>, and <span style="color: #cc0;">eggs</span> in the image by clicking on the center of each one\'s visible area. Sometimes just a head or tail is showing, other times you\'ll be able to mark the center of the chest/torso. We sometimes need you to mark up to 30 of each&thinsp;&mdash;&thinsp;and you can mark more if you want to.'
    removing: 'Click and drag marks to move them to the center of each animal. Remove any accidental marks using the black-and-white cross.'
    other: 'Mark any other animals too so we can see how often they are near the penguin nest.'
    talk: 'After classifying, you can discuss a specific image or the whole project with the science team and other volunteers by visiting Talk. You can also share your favorites with your friends!'

  fieldGuide:
    gentoo: 'Gentoo'
    chinstrap: 'Chinstrap'
    adelie: 'Adélie'
    king: 'King'
    rockhopper: 'Rockhopper'
    adult: 'Adult'
    chick: 'Chick'

  team:
    organisations: 'Organisations'
    scientists: 'Scientists'
    developers: 'Developers'
    oxford: '''Our science team members are ecologists in the Department of Zoology and computer vision engineers in the Department of Engineering Science. The University of Oxford is a collegiate research institute, which strives to bring together leading academics and students across subjects and from different cultures and countries to foster an intense interdisciplinary approach that inspires outstanding research achievement.'''
    aad: '''Researchers at the Australian Antarctic Division pioneered the use of time-lapse cameras in Antarctica to study the population dynamics of Adélie penguins in East Antarctica. The AAD is a leading research institution, which aims to advance Australia’s strategic, scientific, environmental and economic interests in Antarctica and the Southern Ocean.'''
    darwin: '''Generous funding by the Darwin Initiative has played an integral part in the start-up and continuation of this project. The Darwin Initiative is a UK government grants scheme that helps to protect biodiversity and the natural environment through locally based projects worldwide.'''
    quark: '''Quark Expeditions® has been working closely with Penguin Lifelines since 2010 by providing our team with passage to remote regions in order to help support our study of penguin populations. For over 20 years, Quark Expeditions® has been the leading provider of polar adventure travel. With its diverse fleet of specially equipped vessels and seasoned expedition leaders, they offer travelers unparalleled access to the most remote regions on earth: the Arctic and Antarctica.'''
    exodus: '''As part of Exodus' commitment to conservation and responsible travel, the company has generously supported Penguin Lifelines by providing the team with access to fieldwork locations. Exodus is an award winning travel company, which specializes in responsible tourism, providing clients with access to over 500 itineraries across 90 separate countries.'''
    calgaryZoo: '''The Calgary Zoo has generously provided funding to expand the project over the past year. The zoo aims to take and inspire action to sustain wildlife and wild places while becoming Canada’s leader in wildlife conservation.'''
    trailCamPro: '''TrailCamPro has provided affordable cameras, advice on installation and updates, and support throughout the project. TrailCamPro.com is a US-based website, which offers an extensive stock of trail camera equipment and accessories for a range of purposes.'''
    stonyBrook: '''We are currently collaborating with researchers in the Department of Ecology and Evolution at Stony Brook University to monitor sea ice extent and create Bayesian hierarchical decision-making tools for policy makers. A member of the prestigious Association of American Universities (AAU), Stony Brook is a leading public research university in the Northeast United States.'''
    oceanites: '''Collaborators at Oceanites have helped extensively in servicing the cameras at a range of field sites. Oceanites is a nonprofit, science and educational foundation, which intends to foster the conservation of the world’s oceans, islands, and their wildlife, as well as a better appreciation of the sensitive connections we humans have to our watery globe.'''
    bas: '''We have provided cameras and consumables to collaborators at the British Antarctic Survey to monitor local penguin populations around the Southern Ocean. BAS is one of the world's leading environmental research centers and is responsible for the UK's national scientific activities in Antarctica.'''
    zsl: '''ZSL have provided funding, support and technology throughout the project. We work with ZSL to study indicators of penguin success and also on the development of satellite- linked cameras that can survive Antarctica. Founded in 1826, the Zoological Society of London (ZSL) is an international scientific, conservation and educational charity whose mission is to promote and achieve the worldwide conservation of animals and their habitats.'''
    ucl: '''We work with Ben Collen on developing indicators of penguin numbers over time and the threats to their number and have been working with Robin Freeman (now ZSL) on automation of camera analyses. UCL is one of the top universities in the UK, which aims for academic excellence and to conduct research that addresses real-world problems.'''
    noaa: '''We have provided cameras to collaborators at the  Antarctic Ecosystem Research Division of the Southwest Fisheries Science Center to monitor penguins at their long-term research site on King George Island. The AERD is recognized as a leader in the development of ecosystem-based fisheries management and maintains several long-term monitoring studies in the Antarctic Peninsula region.'''
    zooniverse: '''The Zooniverse is home to the internet’s largest, most popular and most successful citizen science projects. The Zooniverse and the suite of projects it contains is produced, maintained and developed by the Citizen Science Alliance. The member institutions of the CSA work with many academic and other partners around the world to produce projects that use the efforts and ability of volunteers to help scientists and researchers.'''
    hart: '''Tom is a penguinologist who runs the Penguin Lifelines project at Oxford University. When he is not making up words, he is researching the threats to penguins and how to mitigate them. He has two main interests: population genetics to study the population structure and movement in relation to climate change and using time-lapse cameras to study the timing of breeding. Much like a supercomputer, he gets smarter in colder temperatures. As a consequence, he can often be found thinking in the Southern Ocean.'''
    black: '''Caitlin is a DPhil student at the University of Oxford, studying how penguins adapt to environmental changes. Her research focuses on the plasticity of behaviors both during the summer breeding season and dark winter months. When she is not sorting through thousands of images or tramping through knee-deep snow in Antarctica, she enjoys cooking and listening to public radio.'''
    zisserman: '''Andrew Zisserman is the Professor of Computer Vision Engineering at the Department of Engineering Science, University of Oxford, where he heads the Visual Geometry Group (www.robots.ox.ac.uk:/~vgg/). He researches visual recognition for images and videos.'''
    aytar: '''Yusuf is a Post-Doctoral Research Assistant at the University of Oxford, studying computer vision and machine learning. His research focuses on teaching computers how to understand images and detect objects (including penguins) through machine learning. He enjoys playing football, basketball, and travelling.'''
    southwell: '''Colin is a Principal Research Scientist in the Australian Antarctic Division. His primary research interests are in providing scientific input to sustainable management of populations and ecosystems and the development of cost-effective methods for large-scale monitoring of seabird and seal populations in the Southern Ocean.'''
    emerson: '''Louise is a Senior Research Scientist at the Australian Antarctic Division. Her primary research interests are in Antarctic seabird ecology and conservation. Her research focuses on revealing the drivers of seabird population dynamics, identifying potential threats to seabirds and accounting for the birds needs in relation to fisheries management approaches. She is also passionately interested in educating the next generation of scientists and is actively involved in talking about her work in the classroom.​'''
    master: '''Adam is responsible for managing the Zooniverse’s web hosting infrastructure. He has a computer science degree and has worked in web hosting and development for many years. He’s also working on a degree in astronomy with the OU.'''
    carstensen: '''Brian Carstensen recently moved from Chicago to Oxford. Brian has a degree in graphic design from Columbia College in Chicago, and worked in that field for a number of years before finding a niche in web development.'''
    allen: '''Web developer for the Zooniverse, enjoys building things on the internet while listening to funky tunes.'''
    lintott: '''Astronomer and founder of both Galaxy Zoo and the Zooniverse that grew from it, Chris is interested in how galaxies form and evolve, how citizen science can change the world, and whether the Chicago Fire can get their act together.'''
    simpson: '''Robert is a researcher and web developer working in Oxford. He has a PhD is in astrophysics from Cardiff and has been hacking astronomy since 2004. He is the Communications Lead for the Zooniverse and is also PI of the Milky Way Project.'''
