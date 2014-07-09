var calculator = function(operator, number1, number2) {
  switch (operator) {
    case "+":
      return number1 + number2;
    case "-":
      return number1 - number2;
    case "*":
      return number1 * number2;
    case "/":
      return number1 * number2;
    case "%":
      return number1 % number2;
    case "sqrt":
      return Math.sqrt(number1);
  }
};

var inputEnd = function(message) {
  var ret = prompt(message);
  return ret === "end" ? false : ret;
}

var checkEnd = function(input) {
  return isNaN(input)? false : true;
}

var main = function() {
  var running = true;
  var current = 0;
  while (running) {
    if (current === 0) {
      var number1 = parseInt(inputEnd("First number"));
      running = checkEnd(number1)? true : false;
    } else {
      var number1 = current;
    }
    var operator = inputEnd("Operator?");
    running = checkEnd(number1)? true : false;
    if (operator !== "sqrt") {
      var number2 = parseInt(inputEnd("Second number"));
      running = checkEnd(number1)? true : false;
    };
    current = calculator(operator, number1,number2)
    console.log(current);
  };

};


main();