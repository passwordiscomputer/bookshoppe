(function() {
  $(function() {
    return $('#products').imagesLoaded(function() {
      return $('#products').masonry({
        itemSelector: '.box',
        isFitWidth: true
      });
    });
  });

}).call(this);
