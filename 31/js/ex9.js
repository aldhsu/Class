var pluralizer = function(noun, number) {
  if (number > 1) {
    return number + " " + noun + "s"
  } else {
    return number + " " + noun
  }
}

console.log(pluralizer("dog", 5));