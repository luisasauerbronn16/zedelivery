#DADO

Dado("que acesso o site do Zé") do
    Capybara.reset_sessions!
    visit $url
    expect(homePage).to have_age_popup
end

Dado("tenho mais de {int} anos") do |int|
    homePage.age_yes.click
    expect(homePage).to have_find_address
end

#QUANDO

Quando("busco o endereço {string}") do |address|
    homePage.find_address.click
    homePage.find_address.native.send_keys(address)
    sleep 1
    homePage.find_address.click
    homePage.address.click
    sleep 1
    homePage.products.click

    sleep 10
end

Quando("seleciono o produto {string}") do |item|
    productsPage.search_bar.set item[0,8]
    productsPage.search.click    

    element =find('span', text: item)
    element_ancestor = element.ancestor('.margin-product').find(:xpath, './/div[@class="margin-auto"][@data-action="add"]')
    element_ancestor.click
    element_ancestor.click
    element_ancestor.click
    sleep 3
    
    productsPage.finish.click
    expect(signupPage).to have_create
end

Quando("realizo o meu cadastro com os dados abaixo") do |table|
    table = table.rows_hash

    signupPage.create.click

    signupPage.name.set table["nome"]
    signupPage.email.set table["email"]
    signupPage.password.set table["senha"]
    signupPage.document.set table["cpf"]
    signupPage.phone.set table["telefone"]
    
    signupPage.day.first(:option, table["dia_nasc"]).select_option
    signupPage.month.first(:option, table["mes_nasc"]).select_option
    signupPage.year.first(:option, table["ano_nasc"]).select_option

    signupPage.submit.click
end
  
#ENTAO 

Então("finalizo meu pedido") do
    #Não foi possível finalizar devido a validação do telefone
end