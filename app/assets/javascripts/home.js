var ready = function () {
  // Initialise select2
  $('.select2').select2({
    placeholder: 'Type/select...',
    selectOnBlur: false,
    formatNoMatches: function(term) {
      return "No results found";
    }
  });
}

$(document).on('turbolinks:load', ready);