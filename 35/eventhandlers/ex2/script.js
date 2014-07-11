var body = document.getElementsByTagName('body')[0];
var solution = document.getElementById('solution');

var square = function() {
  var Input = document.getElementById('square-input');
  var number = Input.value;
  return number * number;
}
var half = function() {
  var Input = document.getElementById('half-input');
  var number = Input.value;
  return number / 2;
}
var fraction = function() {
  var fracInput = document.getElementById('percent1-input');
  var wholeInput = document.getElementById('percent2-input');
  var frac = fracInput.value;
  var whole = wholeInput.value;
  console.log(frac);
  return whole * frac/100;
}
 var area = function() {
  var Input = document.getElementById('area-input');
  var number = Input.value;
  return (number * number) * Math.PI ;
}

var onClickHandler = function(event) {
  var answer = 0;
  switch (event.target.id) {
    case "square-button":
      answer = square();
      break;
    case "half-button":
      answer = half();
      break;
    case "percent-button":
      answer = fraction();
      break;
    case "area-button":
      answer = area();
      break;
  }
  solution.innerHTML = answer;
};

var onKeyUpHandler = function(event) {
  var answer = 0;
  switch (event.target.id) {
    case "square-input":
      answer = square();
      break;
    case "half-input":
      answer = half();
      break;
    case "percent1-input":
    case "percent2-input":
      answer = fraction();
      break;
    case "area-input":
      answer = area();
      break;
  }
  solution.innerHTML = answer;
};

body.addEventListener('click',onClickHandler);
body.addEventListener('keyup',onKeyUpHandler);