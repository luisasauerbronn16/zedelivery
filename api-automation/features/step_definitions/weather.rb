#DADO

Dado("que faço um GET na API weather com os dados abaixo:") do |table|
    $base_url = $base_url + '/weather'

    $variables = table.rows_hash
    $result = request.get
end

Dado("que faço um GET na API box com os dados abaixo:") do |table|
    $base_url = $base_url + '/box/city'

    $variables = table.rows_hash
    $result = request.get
end

Dado("que faço um GET na API find com os dados abaixo:") do |table|
    $base_url = $base_url + '/find'

    $variables = table.rows_hash
    $result = request.get
end

Dado("que faço um GET na API group com os dados abaixo:") do |table|
    $base_url = $base_url + '/group'

    $variables = table.rows_hash
    $result = request.get
end
  
#QUANDO

Quando("o código de resposta HTTP é igual a {string}") do |status_code|
    expect($result.response.code).to eql status_code
end

#ENTÃO

Então("o body de resposta deve conter {int} atributos") do |size|
    expect($result.size).to eql(size)
end

Então("vejo as informaçoes sobre o clima") do
    
    if $result["list"] == nil
        puts "Cidade: #{$result["name"]}"
        puts "Clima: #{$result["weather"]}"
    else
        for city in $result["list"]
            puts "Cidade: #{city["name"]}"
            puts "Clima: #{city["weather"]}"
        end    
       
    end    
end