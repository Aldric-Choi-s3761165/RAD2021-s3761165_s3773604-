module ProductsHelper
    def toggle_favorite(product)
        # If the task has been favorited...
        if product.favorite
          # Show the ★ and link to "unfavorite" it
          link_to raw("<i class='fa fa-star favorite'></i>"), favorite_path(product), remote: true, method: :delete
        else
          # Show the ☆ and link to "favorite" it
          link_to raw("<i class='far fa-star'></i>"), favorites_path(id: product.id), remote: true, method: :post
        end
    end
end
