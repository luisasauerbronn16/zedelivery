#language: pt

Funcionalidade: Realizar pedido
    Sendo um usuário do Zé Delivery
    Posso realizar um pedido
    Para que eu receba os produtos no meu local

Cenário: Realizar pedido iniciando cadastro
    Dado que acesso o aplicativo
    Quando realizo o cadastro com os dados abaixo

        |  nome      |  Luisa Freire             |
        |  email     |  luisa123asbcs@gmail.com  |
        |  senha     |  abcdefsg8                |
        |  cpf       |  38482520822              |
        |  telefone  |  11888888888              |
        |  idade     |  29 anos                  |
    
    E busco o endereço 'Rua Pedro Jacobucci, 330'
    E seleciono o produto 'Colorado Cauim 310ml'
    Então finalizo meu pedido