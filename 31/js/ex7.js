var helloWorld = function(lang) {
  switch (lang) {
    case "es":
      return "Hola Mundo";
    case "de":
      return "Hallo Welt";
    default:
      return "Hello World";
  }
};

console.log(helloWorld("de"));
console.log(helloWorld());
