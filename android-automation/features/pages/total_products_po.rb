require_relative './base_screen'

class TotalProductsPage < BaseScreen

    PLACE_AN_ORDER = 'place-an-order'
    PRODUCT_CARD = 'product-card'

    def wait_page
        element_exists_content(PLACE_AN_ORDER)
    end

    def place_an_order
        touch_element_content(PLACE_AN_ORDER)
    end    

    def wait_product_card
        element_exists_content(PRODUCT_CARD)
    end    

end    