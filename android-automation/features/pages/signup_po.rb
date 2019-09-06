require_relative './base_screen'

class SignupPage < BaseScreen

    NAME = 'full name'
    EMAIL = 'email address'
    PASSWORD = 'password'
    DOC = 'document'
    PHONE = 'phone number'
    AGE = 'age-input-touchable'
    CONFIRM_AGE = 'Confirmar Idade'
    CONTINUE = 'CADASTRAR E CONTINUAR'

    def wait_page
        validate_element_content(NAME)
    end

    def insert_name(name)
        touch_element_content(NAME)
        insert_text_content(NAME, name)
    end 

    def insert_email(email)
        touch_element_content(EMAIL)
        insert_text_content(EMAIL, email)
    end
    
    def insert_password(password)
        touch_element_content(PASSWORD)
        insert_text_content(PASSWORD, password)
    end
    
    def insert_doc(doc)
        touch_element_content(DOC)
        insert_text_content(DOC, doc)
    end
    
    def insert_phone(phone)
        touch_element_content(PHONE)
        insert_text_content(PHONE, phone)
    end    

    def select_age(age)
        touch_element_content(AGE)
        sleep 3
        slide_up_2
        touch_element_xpath_text(age)
        touch_element_xpath_text(CONFIRM_AGE)
    end   
    
    def confirm
        touch_element_xpath_text(CONTINUE)
    end

end    