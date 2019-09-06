class ProductsPage < SitePrism::Page

    element :search_bar, '#search-bar'
    element :search, '#glass-product'
    element :finish, '[class="products-cart-button"]'

end