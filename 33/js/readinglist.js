var a = {
  title: "The Hobbit",
  author: "JRR Tolkien",
  alreadyRead: true
}

var b = {
  title: "Functional Javascript",
  author: "Fogus",
  alreadyRead: false
}
var readingList = [a, b];

for (var index in readingList) {
  book = readingList[index];
  readString = ""
  readString = book.alreadyRead ? "already" : "still need to"


  console.log("You " + readString + " read " + book.title + " by " + book.author)
}
