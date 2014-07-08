var a = {
  title: "Puff the Magic Dragon",
  duration: 30,
  actors: ["Puff", "Jackie","Living sneezes"]
};

var b = {
  title: "Forrest Gump",
  duration: 120,
  actors: ["Tom Hanks", "Bubba"]
};

var db = [a,b]

var printMovie = function(movie) {
  actorsString = movie.actors.join(", ")
  console.log(movie.title + " lasts for " + movie.duration + " minutes. Stars: " + actorsString )
}

for (var index in db) {
  printMovie(db[index]);
}