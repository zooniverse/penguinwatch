module.exports =
  producer: 'Zooniverse'
  title: 'Penguin Watch'
  summary: 'Monitor Penguins in Remote Regions'
  description: 'Scientists have travelled to some of the coldest areas on the planet to learn more about penguin populations. Help annotate their images of wildlife in Antarctica and the Southern Ocean.'

  classificationCount: 'images classified'
  userCount: 'volunteers participating'

  science: "
    <section>#{require './content/science'}</section>
    <section>#{require './content/science-sidebar'}</section>
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

  tutorial:
    welcome: 'Penguin Watch is a citizen science website trying to understand the lives of penguins. We want you to help us mark images taken from nesting sites around Antarctica.'
    marking: 'Individually mark penguins, chicks, and eggs in the image by clicking on the center of each one\'s visible area. Sometimes just a head or tail is showing, other times you\'ll be able to mark the center of the chest/torso. We sometimes need you to mark up to 30 of each&thinsp;&mdash;&thinsp;and you can mark more if you want to.'
    removing: 'Click and drag marks to move them to the center of each animal. Remove any accidental marks using the black-and-white cross.'
    other: 'Mark any other animals too so we can see how often they are near the penguin nest.'
    talk: 'After classifying, you can discuss a specific image or the whole project with the science team and other volunteers by visiting Talk. You can also share your favorites with your friends!'

  fieldGuide:
    gentoo: 'Gentoo'
    chinstrap: 'Chinstrap'
    adelie: 'Adélie'
    king: 'King'
    adult: 'Adult'
    chick: 'Chick'
