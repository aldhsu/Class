var books = [
  {title: 'The Design of EveryDay Things',
   author: 'Don Norman',
   alreadyRead: false,
   url: "http://upload.wikimedia.org/wikipedia/en/3/33/The_Design_of_Everyday_Things_(cover_1988).jpg"
  },
  {title: 'The Most Human Human',
  author: 'Brian Christian',
  alreadyRead: true,
  url: "http://3.bp.blogspot.com/-tYSD8dXEJV8/T1ZcO6vxnTI/AAAAAAAAAME/Xognk7KP4Zg/s1600/MostHuman.jpg"
  }];
var body = document.getElementsByTagName("body")[0];
for (var index in books) {
  book = books[index];
  p = document.createElement('p');
  var ul = document.createElement('ul')
  p.appendChild(ul);
  var img = document.createElement('img');
  img.src = book.url;
  p.appendChild(img);
  body.appendChild(p);

}