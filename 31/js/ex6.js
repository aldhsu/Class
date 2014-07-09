var greaterNum = function(num1, num2) {
  return num1 > num2 ? num1 : num2;
}

var printAnswer = function(num1, num2) {
  console.log("The greater number of " + num1 + " and " + num2 + " is " + greaterNum(num1, num2) );
};

printAnswer(5,7);