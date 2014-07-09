var gbpToDollar = 1.833;

var convert = function(amount, conversionrate) {
  return amount/conversionrate;
};

var printFn = function(amount) {
  signs = getSigns(amount);
  amount = Number(amount.replace(/[^0-9\.\-]+/g,""))
  console.log(signs[0] + amount + " is " + signs[1] + (convert(parseInt(amount), getRate(signs[0]))).toFixed(2));
}

var getRate = function(sign) {
  switch (sign) {
    case "$":
      return gbpToDollar;
    case "£":
      return 1/gbpToDollar;
    default:
      return gbpToDollar;
  }
}

var getSigns = function(amount) {
  switch (amount[0]) {
    case "$":
      return ["$", "£"];
    case "£":
      return ["£", "$"];
    default:
      return ["$", "£"];
  }
}

var money = prompt("How much do you want to convert?");
printFn(money);