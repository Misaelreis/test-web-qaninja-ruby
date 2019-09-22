#language: pt

@breadbakery
Funcionalidade: Adicionar ao carrinho
    Para que eu possa finalizar um compra
    Sendo um cliente que já decidiu o que comer
    Posso adicionar item ao carrinho

    Cenário: Adicionar 1 unidade

        Dado que o produto desejado é "Cup Cake"
        E o valor do produto é de "R$ 8,70"
        Quando eu adiciono 1 unidade
        Então 1 unidade deste deve ser adicionada ao carrinho
        E o valor total é de "R$ 8,70"

    Cenário: Adicionar 2 unidades

        Dado que o produto desejado é "Donut"
        E o valor do produto é de "R$ 2,50"
        Quando eu adiciono 2 unidades
        Então duas unidades devem ser adicionadas ao carrinho
        E o valor total é de "R$ 5,00"

    Cenário: Adicionar vários itens

        Dado que os produtos desejados são:

            | Nome                   | Preço     |
            | Cup Cake               | R$ 8,70   |
            | Donut                  | R$ 2,50   |
            | Pão Artesanal Italiano | R$ 15, 90 |
        Quando eu adiciono todos os itens
        Então vejo todos os itens no carrinho
        E o valor total deve ser de "R$ 27,10"

    
