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
