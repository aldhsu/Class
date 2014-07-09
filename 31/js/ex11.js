var multiTables = function() {
  for(var j = 1; j< 11; j++) {
    console.log(j);
    for(var i = 1; i < 11; i++) {
      console.log(j + " * " + i + " = " + (i * j));
    }
  }
}

multiTables();