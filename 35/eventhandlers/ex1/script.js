var madLibButton = document.getElementById('lib-button');
var noun = document.getElementById('noun');
var adjective = document.getElementById('adjective');
var person = document.getElementById('person');
var storyDiv = document.getElementById('story');
var makeMadLib = function(event) {
  var n = noun.value;
  var a = adjective.value;
  var p = person.value;
  console.log(n);

  storyDiv.innerHTML =  p + " really likes " + a + " " + n + ".";
}

madLibButton.addEventListener('click', makeMadLib);