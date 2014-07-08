var recipe = {
  title: "Steak",
  servings: 1,
  ingredients: ["wagyu"]
}

var keys = [];
for( var k in recipe) {
  keys.push(k);
}

for (var index in keys) {
  key = keys[index]
  console.log(key + ": " + recipe[key] );
}