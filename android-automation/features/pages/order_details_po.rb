require_relative './base_screen'

class OrderDetailsPage < BaseScreen

    SEE_PRODUCTS = 'see-products'

    def initialize
        wait_page
    end     

    def wait_page
        element_exists_content(SEE_PRODUCTS)
    end

    def see_products
        touch_element_content(SEE_PRODUCTS)
    end    

end    