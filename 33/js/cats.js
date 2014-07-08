var catFactory = function (age, furColor){
  var cat = {
    age: age,
    furColor: furColor,
    meow: function() {
    console.log("meoww");
    },
    eat: function(food) {
      console.log('Yum, I love food');
    },
    sleep: function(number) {
      console.log('z' * number);
    },
    destroyFurniture: function(){
      console.log('muahahaha');
    }

  };
  return cat;
};

var syntaxTheCat = catFactory(25, 'black and white tuxedo');

var lizzieTheCat = catFactory(18, 'grey');

var demonTheCat = catFactory(1, 'black');
