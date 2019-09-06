require_relative './base_screen'

class ProductsPage < BaseScreen

    GO_SEARCH = 'open-search'
    SEARCH = 'search-input'
    PLUS = 'plus-button'
    ADD_CHECKOUT = 'add-to-checkout'

    def wait_page
        element_exists_content(GO_SEARCH)
    end

    def go_search
        touch_element_content(GO_SEARCH)
    end    

    def search(text)
        insert_text_content(SEARCH, text)
    end    

    def select_product(xpath_text)
        touch_element_xpath_text(xpath_text)
    end 
    
    def plus
        touch_element_content(PLUS)
    end    

    def add_checkout
        touch_element_content(ADD_CHECKOUT)
    end  

end    