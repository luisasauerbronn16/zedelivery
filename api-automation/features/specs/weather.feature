#language: pt
#enconding: utf-8

@weather
Funcionalidade: Weather
    Sendo usuário do Open Weather 
    Posso fazer buscas de cidades
    Para saber o clima

Cenário: Buscar cidade pelo nome
    Dado que faço um GET na API weather com os dados abaixo:
        
        |  q  |  London,uk  |
        
    Quando o código de resposta HTTP é igual a "200"
    Então o body de resposta deve conter 12 atributos
    E vejo as informaçoes sobre o clima

Cenário: Buscar cidade por ID
    Dado que faço um GET na API weather com os dados abaixo:
        
        |  id  |  2172797  |
        
    Quando o código de resposta HTTP é igual a "200"
    Então o body de resposta deve conter 12 atributos
    E vejo as informaçoes sobre o clima

Cenário: Buscar cidade por coordenadas
    Dado que faço um GET na API weather com os dados abaixo:
        
        |  lat  |  35   |
        |  lon  |  139  | 
        
    Quando o código de resposta HTTP é igual a "200"
    Então o body de resposta deve conter 11 atributos
    E vejo as informaçoes sobre o clima

Cenário: Buscar cidade por zip code
    Dado que faço um GET na API weather com os dados abaixo:
        
        |  zip  |  94040,us  |
        
    Quando o código de resposta HTTP é igual a "200"
    Então o body de resposta deve conter 12 atributos
    E vejo as informaçoes sobre o clima

Cenário: Buscar cidades dentro de uma área
    Dado que faço um GET na API box com os dados abaixo:
        
        |  bbox  |  12,32,15,37,10   |
        
    Quando o código de resposta HTTP é igual a "200"
    Então o body de resposta deve conter 4 atributos
    E vejo as informaçoes sobre o clima

Cenário: Buscar cidades ao redor    
    Dado que faço um GET na API find com os dados abaixo:
        
        |  lat  |  55.5   |
        |  lon  |  37.5   | 
        |  cnt  |  10     |
        
    Quando o código de resposta HTTP é igual a "200"
    Então o body de resposta deve conter 4 atributos
    E vejo as informaçoes sobre o clima

Cenário: Buscar mais de uma cidade
    Dado que faço um GET na API group com os dados abaixo:
        
        |  id     |  524901   |
        |  id     |  703448   | 
        |  id     |  2643743  |
        |  units  |  metric   | 

    Quando o código de resposta HTTP é igual a "200"
    Então o body de resposta deve conter 2 atributos
    E vejo as informaçoes sobre o clima