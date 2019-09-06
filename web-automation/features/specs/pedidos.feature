#language: pt

Funcionalidade: Realizar pedido
    Sendo um usuário do Zé Delivery
    Posso realizar um pedido
    Para que eu receba os produtos no meu local

Cenário: Realizar pedido sem cadastro
    Dado que acesso o site do Zé
    E tenho mais de 18 anos
    Quando busco o endereço 'Rua Pedro Jacobucci, 330'
    E seleciono o produto 'Colorado Cauim 310ml - Unidade'
    E realizo o meu cadastro com os dados abaixo

        |  nome       |  Luisa Freire             |
        |  email      |  luisasauer123@gmail.com  |
        |  senha      |  abcdefg8                 |
        |  cpf        |  38482520822              |
        |  telefone   |  11777777777              |
        |  dia_nasc   |  16                       |
        |  mes_nasc   |  Set                      |
        |  ano_nasc   |  1989                     |

    Então finalizo meu pedido
