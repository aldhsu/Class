var radius = 3;

var circumferenceCircle = function(radius) {
  var circumference = 2 * Math.PI * radius;
  console.log("The circumference is " + circumference);
};

var areaCircle = function(radius) {
console.log("The area is " + Math.PI * (radius * radius));
};

circumferenceCircle(radius);
areaCircle(radius);