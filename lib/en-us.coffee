module.exports =
  producer: 'Zooniverse'
  title: 'Penguin Watch'
  summary: 'Welcome to PenguinWatch 2.0!'
  description: 'We now monitor over 100 sites! We need your help more than ever - to help monitor penguins, click "get started". If you are a school or educational site and you want to adopt and help us with a specific colony and get data feedbacks, please register (sign up) and contact us!'

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
  science: '''
    <section><h1 id="our-vision">Our vision</h1>
    <p>Currently, there are numerous serious threats to marine predators in the Southern Ocean: namely climate change, fisheries, and direct human disturbance. However, despite over a hundred years of study in the region, we have little baseline information against which to measure change. As we move away from scientific bases, less data is available on populations of predators and, consequently, huge gaps remain in our understanding of the Antarctic ecosystem.</p>
    <p>As top predators, penguins are considered sentinels of changes within their ecosystem. Because penguins spend the majority of their life in water and fall at the top of the food chain, any variations in their populations may represent larger changes to the dynamic Antarctic ecosystem. We hope to measure these changes year- round at a large geographical range of study sites in order to better understand how threats to the ecosystem disrupt the dynamics of resident wildlife.</p>
    <figure>
      <img src="./site-map.png" alt="Map of camera locations">
      <figcaption>Map of camera locations</figcaption>
    </figure>

    <h2 id="why-cameras-">Why cameras?</h2>
    <p>Camera technology affords us the ability to deploy ‘artificial ecologists’ in hard-to-reach areas, or in places where human presence might disturb wildlife and therefore disrupt their behavior. By establishing a camera network in the Southern Ocean, a region of the world with harsh conditions year-round, we hope to capture novel behaviors and study penguin populations that have never before been observed because of their remote locations.</p>
    <figure>
      <img src="./camera-setup.jpg" alt="Camera overlooking Gentoo penguin colony">
      <figcaption>Camera overlooking Gentoo penguin colony on Petermann Island, Antarctica. Each camera unit consists of a trail camera set to time-lapse mode mounted on a scaffold pole, anchored by a basket of rocks.</figcaption>
    </figure>

    <p>However, along with the infinite possibilities of cameras as a monitoring tool comes an enormous amount of data in the form of hundreds of thousands of images. Each of our 50 cameras takes between 8 to 96 images daily throughout the entire year. In order to turn this massive database of information into a data set that we can use to answer hypotheses, we need your collective help.</p>
    <figure>
      <div class='time-lapse-video'></div>
      <figcaption>Condensed time-lapse video of Petermann Island penguin colony, taken from one of our cameras.</figcaption>
    </figure>

    <h2 id="project-goals">Project goals</h2>
    <p>Images provide the ability to ask and answer a range of questions depending on the location, study species, and the size of the colony. Although penguins are relatively well studied, the harsh Antarctic environment makes monitoring wildlife difficult compared to other ecosystems. Therefore, to paint a better picture of future changes to colonies and populations, we hope to create an expansive monitoring network, consisting of many years of observation, to answer big picture questions.</p>
    <p>Specifically, we aim...</p>
    <ul>
    <li><p>To determine changes in the timing of breeding of populations over time (eg. arrival and departure dates, hatching dates, incubation period, guard and post-guard periods).</p>
    <p><img src="./breeding-cycle.png" alt="The general annual life cycle of a penguin"></p>
    </li>
    <li><p>To compare nest survival rates between populations and determine whether low nest survival is linked to anthropogenic or ecological factors present near the colonies.</p>
    </li>
    <li><p>To reveal the rate of predation on chicks at each sites, the main predators and scavengers present, the peak timing of predation, and any mass predation events.</p>
    </li>
    <li><p>To determine whether particular colonies overwinter at breeding sites and if this behavior is mediated by the presence of certain sea ice types.</p>
    </li>
    </ul>
    </section> <section><h3 id="about-penguin-lifelines">About Penguin Lifelines</h3>
    <p><img src="./penguin-lifelines.png" alt="Penguins Lifelines Logo"></p>
    <p>Since 2009, the Penguin Lifelines project at the University of Oxford (<a href="http://www.penguinlifelines.org/">www.penguinlifelines.org</a>) has sought to find novel solutions to the present data gaps, using satellite- linked cameras and genetic analysis. Together, these approaches have resulted in an integrated monitoring network that has the capacity to provide data to policy makers on areas particularly sensitive to fishing and human disturbance.</p>
    <p>Our camera-monitoring program currently consists of 50 cameras throughout the Southern Ocean and along the Antarctic Peninsula, overlooking colonies of Gentoo, Chinstrap, Adélie, and King penguins. The cameras take images of the penguins year-round and are able to determine the health of the colony by obtaining nest survival rates while also observing novel behaviors, such as why and where penguins spend their winter months.</p>
    <p>With the help of the Computer Vision laboratory at the University of Oxford, we are working to develop a recognition tool by which computers can automatically count every penguin individual in an image. By working at the fruitful interface of ecology and computer vision, we hope to improve the management of data from imagery and answer novel questions about wildlife dynamics that would otherwise be impossible.</p>
    <h3 id="why-we-need-your-help">Why we need your help</h3>
    <p>We need your help annotating the hundreds of thousands of images taken over the past three years to turn images into numbers, which can then be used to answer novel questions about these penguin populations. By annotating the images, you are helping us to succeed in our project goals by obtaining quantitative data from photographs, which will directly improve our understanding of these species, while also assisting in their conservation. Your notations on the images will also aid in “training” a computer to automatically recognize penguin individuals. With your help, we hope that future image analysis can be automated for a range of species and speed up the lengthy data extraction process to produce near real-time results.</p>
    <h3 id="conservation">Conservation</h3>
    <p>Ultimately, we hope that our research can directly feed into policy as we build evidence to determine important regions for penguins and highlight specific colonies of concern. There is growing support for Marine Protected Areas (MPA) at our study areas, which would protect penguins by restricting fisheries activities, but we must first fill in gaps in our understanding of the species distributions and behaviors.</p>
    <p>Can you help? <a href="https://www.campaign.ox.ac.uk/page.aspx?pid=3091">Donate</a></p>
    </section>
  '''

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
    marking: 'Individually mark <span style="color: #f90;">adult penguins</span>, <span style="color: #6f0;">chicks</span>, and <span style="color: #cc0;">eggs</span> in the image by clicking on the centre of each one\'s visible area.</br>Click and drag marks to move them to the centre of each animal.</br>Remove any accidental marks using the black-and-white cross.'
    distant: 'Too small to count? Ignore any penguins in the background like 1 & 2.</br>Mark any in the foreground and then click \"too many penguins to mark\".'
    blurred: "Bad weather? Just click \"I can't tell\".</br>Partially obscured? Click as many as you can."
    other: 'Mark any other animals too so we can see how often they are near the penguin nest.'

  fieldGuide:
    parade: 'Parade'
    gentoo: 'Gentoo'
    chinstrap: 'Chinstrap'
    adelie: 'Adélie'
    king: 'King'
    rockhopper: 'Rockhopper'
    macaroni: 'Macaroni'

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
