
let starIcon = document.querySelector("#product_<%= @product.id %>").querySelector('.fa-star')

starIcon.parentElement.outerHTML = "<%= escape_javascript(toggle_favorite(@product)) %>"