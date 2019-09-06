require_relative './base_screen'

class FindAddressPage < BaseScreen

    FIND_ADDRESS = 'address input'
    ADDRESS = 'list-address-card'

    def initialize
        wait_page
    end     

    def wait_page
        element_exists_content(FIND_ADDRESS)
    end

    def find_address(text)
        insert_text_content(FIND_ADDRESS, text)
        touch_element_content(ADDRESS)
    end    

end    