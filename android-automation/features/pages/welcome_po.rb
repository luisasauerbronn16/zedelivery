require_relative './base_screen'

class WelcomePage < BaseScreen

    SIGNUP = 'create-account'

    def initialize
        wait_page
    end     

    def wait_page
        validate_element_content(SIGNUP)
    end

    def start_signup
        touch_element_content(SIGNUP)
    end     

end    