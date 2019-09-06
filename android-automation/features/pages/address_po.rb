require_relative './base_screen'

class AddressPage < BaseScreen

    COMPLEMENT = 'complement-input'
    NEXT = 'continue'

    def initialize
        wait_page
    end     

    def wait_page
        element_exists_content(COMPLEMENT)
    end

    def insert_complement(text)
        insert_text_content(COMPLEMENT, text)
    end    

    def next
        touch_element_content(NEXT)
    end

end    