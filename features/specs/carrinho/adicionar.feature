#language: pt

@breadbakery
Funcionalidade: Adicionar ao carrinho
    Para que eu possa finalizar um compra
    Sendo um cliente que já decidiu o que comer
    Posso adicionar item ao carrinho

    Cenário: Adicionar 1 unidade

        Dado que o produto desejado é "Cup Cake"
        E o valor do produto é de "R$ 8,70"
        Quando eu adiciono 1 unidade(s)
        Então deve ser adicionado 1 unidade(s) deste item
        E o valor total é de "R$ 8,70"

    Cenário: Adicionar 2 unidades

        Dado que o produto desejado é "Donut"
        E o valor do produto é de "R$ 2,50"
        Quando eu adiciono 2 unidade(s)
        Então deve ser adicionado 2 unidade(s) deste item
        E o valor total é de "R$ 5,00"

    Cenário: Adicionar vários itens

        Dado que os produtos desejados são:

            | nome                   | preço     | quantidade |
            | Cup Cake               | R$ 8,70   | 1          |
            | Donut                  | R$ 2,50   | 2          |
            | Pão Artesanal Italiano | R$ 15, 90 | 1          |
        Quando eu adiciono todos os itens
        Então vejo todos os itens no carrinho
        E o valor total é de "R$ 29,60"

    
