var assignGrade = function(score) {
  if (score > 90) {
    return "A";
  } else if (score > 80) {
    return "B";
  } else if (score > 70) {
    return "C";
  } else if (score > 60) {
    return "D"
  } else {
    return "F"
  }
}


for (var grade = 0; grade < 101; grade++) {
  console.log(grade + " is a " + assignGrade(grade));
}