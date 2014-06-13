module.exports =
  producer: 'Zooniverse'
  title: 'Penguin Watch'
  summary: 'Monitor Penguins in Remote Regions'
  description: 'Scientists have travelled to some of the coldest areas on the planet to learn more about penguin populations. Help annotate their images of wildlife in Antarctica and the Southern Ocean.'

  classificationCount: 'images classified'
  userCount: 'volunteers participating'

  science: require './content/science'

  whatToDo: 'Choose a tool, then mark the image.'
  choices:
    adult: 'Adults'
    chick: 'Chicks'
    eggs: 'Eggs'
    other: 'Other'
    snowySheathbill: 'Snowy sheathbill'
    southernGiantPetrel: 'Southern giant petrel'
    brownSkua: 'Brown skua'
    kelpGull: 'Kelp gull'
    humans: 'Humans'
    shipsVessels: 'Ships/vessels'

  limitNumberOfMarks: '''
    You've marked 25. Feel free to move on to the next image.
    Several people will see each image, so we won't miss anything.<br /><br />
    Thanks for your hard work!
  '''

  limitNumberOfMarksDismiss: 'Got it'

  tutorial:
    welcome: 'Penguin Watch is a citizen science website trying to understand the lives of penguins. We want you to help us mark images taken from nesting sites around Antarctica.'
    marking: 'Mark penguins, chicks, or eggs by clicking on the image. We sometimes need you to mark up to 25 of each&thinsp;&mdash;&thinsp;and you can more more if you want to.'
    removing: 'Remove marks by clicking them and using the black-and-white cross.'
    other: 'Mark any other animals too so we can se how often they are near the penguin nest.'
    talk: 'You can discuss the project with the science team and other volunteers by visiting Talk.'
