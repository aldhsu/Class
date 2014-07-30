$(document).ready(function(){
  display_map(-33.8698426, 151.2061608, 13);
  $('#new_task').on('ajax:success', function (event, data) {
    $('#new_task').get(0).reset();
    console.log(data["latitude"]);
    add_marker(data["latitude"], data["longitude"], data["title"]);
  })
});

var map;

var display_map = function(latitude, longitude, zoom) {
  var mapOptions = {
    center: new google.maps.LatLng(latitude,longitude),
    zoom: zoom,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };

  var canvas = $('#map_canvas').get(0);
  map = new google.maps.Map(canvas, mapOptions);
};

var add_marker = function(lat, long, title) {
  var latlng = new google.maps.LatLng(lat,long);
  var marker = new google.maps.Marker({
    position: latlng,
    map: map,
    title: title
  });
};