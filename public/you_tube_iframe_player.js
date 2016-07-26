// Load the IFrame Player API code asynchronously.
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/player_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var player;
function onYouTubePlayerAPIReady() {
  load_time_lapse_video();
}

function load_time_lapse_video() {
  var time_lapse_video = document.querySelector('.time-lapse-video')
  player = new YT.Player(time_lapse_video, {
    height: '315',
    width: '560',
    videoId: 'K2M6aNehEhY'
  });
}

window.zooniverse.LanguageManager.on('change-language', function(e, code, languageStrings) {
  return load_time_lapse_video();
});
