Dado("que acesso o aplicativo") do
	$driver.start_driver
	sleep 5
end
  
Quando("realizo o cadastro com os dados abaixo") do |table|
    table = table.rows_hash
	
	welcomePage.start_signup
	
    signupPage.wait_page  
    signupPage.insert_name(table["nome"])
    signupPage.insert_email(table["email"])
	signupPage.insert_password(table["senha"])
	signupPage.slide_up
    sleep 1
	signupPage.insert_doc(table["cpf"])
    signupPage.insert_phone(table["telefone"])
    signupPage.select_age(table["idade"])
    
	signupPage.confirm   
	 
    confirmPhonePage.wait_page
    confirmPhonePage.validate_later
end

Quando("busco o endereço {string}") do |address|
	sleep 5
	findAddressPage.find_address(address)
	sleep 1
	addressPage.insert_complement("ap")
	addressPage.next
end
  
Quando("seleciono o produto {string}") do |item|
	sleep 5
	orderDetailsPage.see_products

	productsPage.wait_page
	productsPage.go_search
	productsPage.search(item[0,11])
	sleep 4
	productsPage.select_product(item)
	sleep 4
	productsPage.plus
	productsPage.plus
	sleep 2
	productsPage.add_checkout
	sleep 2
	totalProductsPage.place_an_order
    sleep 2
	totalProductsPage.wait_product_card

end
  
Então("finalizo meu pedido") do
    #Não foi possível finalizar devido aos dados reais necessários
end