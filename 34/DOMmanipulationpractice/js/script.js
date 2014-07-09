var body = document.getElementsByTagName('body')[0];
body.style.fontFamily = "Arial, sans-serif"

var nickname = document.getElementById('nickname');
nickname.innerHTML = "Alf";

var favorites = document.getElementById('favorites');
favorites.innerHTML ='DOTA';

var hometown = document.getElementById('hometown');
hometown.innerHTML = "Brisbane";

var lis = document.getElementsByTagName('li');
for (var index in lis) {
  lis[index].className = "listitem"
}

css = document.createElement('style');
css.type = 'text/css';
styles = ".listitem { color: red; }";
css.appendChild(document.createTextNode(styles));
body.appendChild(css);

image = document.createElement('img');
image.src = "http://www.missmotors.net/dati/gallery/06_mister_motors/2007/Mister%20Intercontinental%20i%2015%20vincitori/ALLEN.jpg"
body.appendChild(image);