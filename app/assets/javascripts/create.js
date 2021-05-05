<!--// Use that handy `dom_id` from before to identify the correct-->
<!--// <article> on the index page and then grab its star <i>-->
let starIcon = document.querySelector("#product_<%= @product.id %>").querySelector('.fa-star')

<!--// Reuse the logic from the `toggle_favorite` method to-->
<!--// update the star icon styles and the link destination-->
starIcon.parentElement.outerHTML = "<%= escape_javascript(toggle_favorite(@product)) %>"