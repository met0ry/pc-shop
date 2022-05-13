$(document).ready(function() {
  $("#sort-dropdown").click(function() {
    $("#sort-options").toggle();
  });
  $("#sort-options li").click(function(e) {
    $("#sort-dropdown .selected").text(e.target.textContent);

    let params = new URLSearchParams(location.search);

    params.set('order_by', e.target.getAttribute('value'));
    
    window.location.replace(`${location.pathname}?${params}`);
  })
});