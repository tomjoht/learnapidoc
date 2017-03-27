(function() {
  function displaySearchResults(results, store) {
    var searchResults = document.getElementById('search-results');

    if (results.length) { // Are there any results?
      var appendString = '';

       // for (var i = 0; i < results.length; i++) {  // Iterate over the results
        for (var i = 0; i < results.length && i < 10; i++) {  // Iterate over the results
        var item = store[results[i].ref];
        appendString += '<a href="' + item.url + '"><h4>' + item.title + '</h4></a>';
        appendString += '<p>' + item.content.substring(0, 150) + '... <span class="productSubtitle">[' + item.product + ']</span></p>';
      }

      searchResults.innerHTML = appendString;
    } else {
      // this is a hack for the inability to submit different language strings here
      searchResults.innerHTML = '<span style="color: red"><i class="fa fa-times" aria-hidden="true"></i><i class="fa fa-times" aria-hidden="true"></i><i class="fa fa-times" aria-hidden="true"></i><i class="fa fa-times" aria-hidden="true"></i><i class="fa fa-times" aria-hidden="true"></i></span>';
    }
  }

  function getQueryVariable(variable) {
    var query = window.location.search.substring(1);
    var vars = query.split('&');

    for (var i = 0; i < vars.length; i++) {
      var pair = vars[i].split('=');

      if (pair[0] === variable) {
        return decodeURIComponent(pair[1].replace(/\+/g, '%20'));
      }
    }
  }

  var searchTerm = getQueryVariable('query');

  if (searchTerm) {
    document.getElementById('search-box').setAttribute("value", searchTerm);

    // Initalize lunr with the fields it will be searching on. I've given title
    // a boost of 10 to indicate matches on this field are more important.
    var idx = lunr(function () {
      this.field('id');
      this.field('title', { boost: 10 });
      this.field('product');
      this.field('tags');
      this.field('content');
    });

    for (var key in window.store) { // Add the data to lunr
      idx.add({
        'id': key,
        'title': window.store[key].title,
        'tags': window.store[key].tags,
        'content': window.store[key].content,
        'product': window.store[key].product
      });

      var results = idx.search(searchTerm); // Get lunr to perform a search
      displaySearchResults(results, window.store); // We'll write this in the next section
    }
  }
})();
