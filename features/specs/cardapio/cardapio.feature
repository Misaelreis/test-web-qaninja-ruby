#language: pt

@cp
Funcionalidade: Informações adicionais
    Para que eu possa ver as informações adicionais
    Sendo um usuário que escolheu um restaurante
    Posso ver a categoria, descrição detalhada e horário de funcionamento

    Cenário: Detalhe do restaurante
        Dado que eu acesso a lista de restaurantes
        Quando eu escolho o restaurante "Burger House"
        Então eu vejo os seguintes itens no cardápio:
            | produto        | descricao                       | Preço    |
            | Classic Burger | O clássico. Não tem como errar. | R$ 18,50 |
            | Batatas Fritas | Batatas fritas crocantes        | R$ 5,50  |
            | Refrigerante   | O refri mais gelado da cidade.  | R$ 4,50  |

    Cenário: Carrinho vazio
        
        Quando eu escolho o restaurante "Burger House"
        Então vejo a mensagem no carrinho "Seu carrinho está vazio!"