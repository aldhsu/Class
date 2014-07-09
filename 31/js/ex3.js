var currentAge = 28;
var maxAge = 100;
var perDay = 1;

var lifeTimeSupply = function() {
  var lifetime = (maxAge-currentAge)*365*perDay;
  console.log("You will need " + lifetime + " to last you until the ripe old age of " + maxAge);
};

lifeTimeSupply(currentAge, maxAge, perDay);