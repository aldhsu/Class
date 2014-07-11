var movePixels = 2;
var delayMs = 50;
var catTimer = null;
var direction = 1

function catWalk() {
  var img = document.getElementsByTagName('img')[0];
  var currentLeft = parseInt(img.style.left);
  img.style.left = (currentLeft + movePixels * direction) + 'px';
  if (currentLeft > (window.innerWidth-img.width)) {
    direction = -1;
    img.className = "backwards";
  } else if (currentLeft < 0) {
    direction = 1;
    img.className = null;
  } else if (currentLeft == window.innerWidth/2) {
    stopCatWalk();
    img.src = "http://img1.wikia.nocookie.net/__cb20090422201555/uncyclopedia/images/2/21/Dance_cat.gif";
    setTimeout(function() {
      img.src = "http://www.anniemation.com/clip_art/images/cat-walk.gif";
      startCatWalk();
    }, 1000);
  }
}
function startCatWalk() {
  clearInterval(catTimer);
  // console.log("starting");
  catTimer = window.setInterval(catWalk, delayMs);
}

function stopCatWalk() {
  clearInterval(catTimer);
}

function speedCatWalk() {
  delayMs -= 5;
  clearInterval(catTimer);
  catTimer = window.setInterval(catWalk, delayMs);
}

var startButton = document.getElementById('start-button');
startButton.addEventListener('click', startCatWalk);

var stopButton = document.getElementById('stop-button');
stopButton.addEventListener('click', stopCatWalk);

var speedButton = document.getElementById('speed-button');
speedButton.addEventListener('click', speedCatWalk);