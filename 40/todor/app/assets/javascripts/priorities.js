$(document).ready(function(){

  var renderPriorityBoxes = function() {
    var $colors = $(".color");
    $colors.each(function(index, elem) {
      var $color = $(elem);
      var hex = $color.text();
      var $box = $('<div>');
      $box.addClass('priority');
      $box.css('background-color', hex);
      $color.closest('li').prepend($box);
    })
  };

  var toggleForm = function() {
    $('#new_priority').toggle(function() {
      $('form').toggle();
    })
    event.preventDefault();
    ;
  }

  // var showForm = function() {
  //   $('form').show();
  //   $('#new_priority').toggle();
  // };

  // var hideForm = function(event) {
  //   event.preventDefault();
  //   $('form').hide();
  //   $('#new_priority').show();
  // };

  $('#new_priority').on('click', toggleForm);
  $('#cancel_priority').on('click', toggleForm);
  renderPriorityBoxes();
});