require_relative './base_screen'

class ConfirmPhonePage < BaseScreen

    TITLE = 'CONFIRME SEU TELEFONE'
    VALIDATE_LATER = 'validate-later'

    def initialize
        wait_page
    end     

    def wait_page
        validate_element_xpath_text(TITLE)
    end

    def validate_later
        touch_element_content(VALIDATE_LATER)
    end    

end    