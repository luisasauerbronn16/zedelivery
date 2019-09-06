class BaseScreen

    ############
    #   XPATH  #
    ############

    def element_exists_xpath_text(xpath_text)
        exists(10) {find_element(:xpath,"//*[@text='#{xpath_text}']")}
    end

    def validate_element_xpath_text(xpath_text)
        result = exists(10) {find_element(:xpath,"//*[@text='#{xpath_text}']")}
        if result == false
            fail("Não foi possível encontrar o elemento com o texto '#{xpath_text}'")
        end    
    end    

    def touch_element_xpath_text(xpath_text)
        element_exists_xpath_text(xpath_text)
        find_element(:xpath,"//*[@text='#{xpath_text}']").click
    end

    def insert_text_xpath(xpath_text, text)
        touch_element_xpath_text(xpath_text)
        find_element(:xpath,"//*[@text='#{xpath_text}']").send_keys(text)
    end

    #############
    #  CONTENT  #
    #############

    def element_exists_content(element_id)
        exists(10) { find_element(:accessibility_id, element_id)}
    end

    def validate_element_content(element_id)
        result = exists(10) {find_element(:accessibility_id, element_id)}
        if result == false
            fail("Não foi possível encontrar o elemento '#{element_id}'")
        end    
    end  

    def touch_element_content(element_id)
        find_element(:accessibility_id, element_id).click
    end

    def insert_text_content(element_id, text)
        element_exists_content(element_id)
        txtBox = find_element(:accessibility_id, element_id)
        txtBox.click
        txtBox.send_keys(text)
    end

    ###########
    #  SWIPE  #
    ###########

    def slide_up
        largura = window_size().width() / 2
        altura = window_size().height() / 2
        Appium::TouchAction.new.swipe(start_x: largura, start_y: altura, end_x: 0.5, end_y: 0.1, duration:2500).perform

    end

    def slide_up_2
        largura = window_size().width() / 2
        altura = window_size().height() - 250
        Appium::TouchAction.new.swipe(start_x: largura, start_y: altura, end_x: 0.5, end_y: 0.1, duration:2500).perform

    end

end