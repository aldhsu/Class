var triangleCalc = function(tri) {
  var a = tri.sideA;
  var b = tri.sideB;
  var c = tri.sideC;
  var s = (a + b + c)/2
  var area = Math.sqrt(s*(s-a)*(s-b)*(s-c));
  return area;
}

var triangle = {
  sideA: 3,
  sideB: 4,
  sideC: 2
};

console.log(triangleCalc(triangle));