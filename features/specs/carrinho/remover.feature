#language: pt
    
    @breadbakery @tt
    Funcionalidade: Remover do carrinho
        Para que eu possa manter meu carrinho com itens desejados
        Sendo um cliente que desistiu de um ou mais produtos
        Posso remover itens do carrinho

        Contexto: Itens no carrinho
            Dado que eu tenha os seguintes itens no carrinho
                | nome                   | Preço     | quantidade |
                | Cup Cake               | R$ 8,70   | 1          |
                | Donut                  | R$ 2,50   | 1          |

        Esquema do Cenário: Remover todos os item

            Quando eu removo somente o <item>
            Então o valor total é de <total>

            Exemplos:
            | item | total      |
            | 0    | "R$ 2,50" |
            | 1    | "R$ 8,70" |

        Cenário: Remover todos os itens

            Quando eu removo todos os itens
            Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"

        Cenário: Limpar carrinho

            Quando eu limpo o meu carrinho
            Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"

