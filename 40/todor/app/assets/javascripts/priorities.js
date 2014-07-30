$(document).ready(function(){
  if (_.isUndefined(window.priorities)) return;
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

  var addBox = function(data) {
    // Find if id exists
    var $li = $('<li>');
    var $span1 = $('<span>');
    $span1.addClass('name')
    $span1.text(data.name);
    var $span2 = $('<span>');
    $span2.addClass('color invisible');
    $span2.text(data.color);
    var $span3 = $('<span>');
    $span3.addClass('invisible id')
    $span3.text(data.id);
    var $span4 = $('<span>');
    $span4.addClass('invisible urgency')
    $span4.text(data.urgency);
    var $box = $('<div>');
    $box.addClass('priority');
    $box.css('background-color', data.color);
    $li.append($box);
    $li.append($span1);
    $li.append($span2);
    $li.append($span3);
    $li.append($span4 );
    $li.prependTo($('#priority-list'));
  }
  var editPriority = function (item) {
    if ($('form').is(':hidden')) toggleForm();
    var $li = $(item).closest('li');
    var text = $($li.find('.name')[0]).text();
    var color = $($li.find('.color')[0]).text();
    var urgency = $($li.find('.urgency')[0]).text();
    var id = $($li.find('.id')[0]).text();
    console.log(text);
    $('#name').attr('value', text);
    $('#color').val(color);
    $('#urgency').val(urgency);
    $('#id').val(id);
    $('#add-priority').hide();
    $('#update-priority').show();
  }
  var toggleForm = function(event) {
    $('#new_priority').toggle(function() {
      $('form').toggle();
      $('#name').focus();
    });
    if (event) event.preventDefault();
    $('form')[0].reset();
    $('#add-priority').show();
    $('#update-priority').hide();
  }

  var renderPriorities = function() {
    $('#priority-list').empty();
    priorities = _(priorities).sortBy('urgency');
    _(priorities).each(addBox);
  }

  $('#new_priority').on('click', toggleForm);
  $('#cancel_priority').on('click', toggleForm);
  $('#priorities').on('submit', function (event) {
    event.preventDefault();

    var text = $('#name').val();
    var color = $('#color').val();
    var urgency = $('#urgency').val();
    var id = $('#id').val();
    toggleForm();
    $.ajax({
      url: '/priorities',
      type: 'POST',
      dataType: 'json',
      data: {
        id: id,
        name: text,
        color: color,
        urgency: urgency
      },
      success: function(p) {
        priorities = _(priorities).reject(function (priority){
          console.log(p.id, priority.id);
          return p.id == priority.id;
        })
        priorities.push(p);
        renderPriorities();
      }
    })
  })

  // Delegation
  $('#priority-list').on('click', '.priority', function(event) {
    editPriority(this);
  })
  renderPriorities();
});