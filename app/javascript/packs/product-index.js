const { param } = require("jquery");

$(document).ready(function() {
  $("#sort-dropdown").on("click", function(e) {
    $("#sort-options").toggle();
  });
  $("#sort-options li").on("click", function(e) {
    $("#sort-dropdown .selected").text(e.target.textContent);

    let params = new URLSearchParams(location.search);

    params.set('order_by', e.target.getAttribute('value'));
    
    window.location.replace(`${location.pathname}?${params}`);
  })
});

$(document).ready(function() {
  $("#product-filter .product-filter-field .product-filter-field-head").on("click", function(e) {
    $(e.target.parentElement.nextSibling).toggle();
  });

  $("#product-filter .product-filter-field .product-filter-field-body ul li input").change(function(e) {
    let url_params = new URLSearchParams(location.search);

    let filter_field = this.id.split('_filter_').shift()

    let filter_value = this.id.split('_filter_').pop()

    if (this.checked) {
      let param = url_params.get(filter_field)

      if (param) {
        new_params = param.concat(",", filter_value)
        url_params.set(filter_field, new_params)
      } else {
        url_params.set(filter_field, filter_value)
      }
    } else {
      let regex_str = `${filter_value},|,${filter_value}|${filter_value}`
      let regex = new RegExp(regex_str); 

      new_params = url_params.get(filter_field).replace(regex, '')
      url_params.set(filter_field, new_params)
    }

    window.location.replace(`${location.pathname}?${url_params}`);
  })
})