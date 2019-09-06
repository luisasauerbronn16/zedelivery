class SignupPage < SitePrism::Page

    element :create, '[class="sc-kLIISr OukyK"]'
    element :name, '[name="name"]'
    element :email, '[name="email"]'
    element :password, '[name="password"]'
    element :document, '[name="document"]'
    element :phone, '[name="phone"]'
    element :day, '[name="day"]'
    element :month, '[name="month"]'
    element :year, '[name="year"]'
    element :submit, '[type="submit"]'
    
end