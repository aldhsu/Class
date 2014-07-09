var currentYear = "2014";
var birthYear = "1986";

var ageOf = function(currentyear, birthyear) {
  var age1 = currentYear - birthYear
  var age2 = currentYear - birthYear - 1
  console.log("They are either " + age1 + " or " + age2);
};

ageOf(currentYear, birthYear);