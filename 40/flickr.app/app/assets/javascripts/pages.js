$(document).ready(function(){
  var page = 1;
  var searchTerm;
  var loading = false;

  var clearImages = function() {
    $('#images').empty();
  };

  var searchFlickr = function() {
    searchTerm = $('#search').val();

    var process_images = function(data) {
      var images = data.photos.photo;

      for(var index in images) {
        var item = images[index];
        var img_url = "http://farm"+ item.farm +".static.flickr.com/"+ item.server +"/"+ item.id +"_"+ item.secret +"_m.jpg";
        var $img = $('<img>');
        $img.attr('src', img_url);
        $('#images').append($img);
      };
      loading = false;
    };
    // JSON get
    $.getJSON('https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=34c8cb7df39d7c5aabacbbfa2b4b3c73&text=' + searchTerm + '&per_page=25&page=' + page + '&format=json&jsoncallback=?', process_images);
  };

  var nextPage = function() {
    clearImages();
    page += 1;
    searchFlickr();
  }

  var infiniteScroll = function() {
    var $wind = $(window);
    if (($wind.scrollTop()/($(document).height()-$wind.height()) > .5) && (loading === false)) {
      console.log("searching");
      loading = true;
      page++;
      searchFlickr();
    };
  };

  var searchClick = function() {
    page = 1;
    clearImages();
    searchFlickr();
  }

  // Listeners
  $(window).scroll(function() {
    infiniteScroll();
  })
  $('#search_flickr').on('click', searchClick);
  $('#clear').on('click', clearImages);
  $('#next').on('click', nextPage)
});
