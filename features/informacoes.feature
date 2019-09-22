#language: pt

Funcionalidade: Cardápio
    Para que eu possa decidir o que comer
    Sendo um usuário que escolheu um restaurante
    Posso acessar o cardápio

    @desc
    Cenário: Produto
        Dado que eu acesso a lista de restaurantes
        Quando eu escolho o restaurante "Burger House"
        Então eu vejo as seguintes informações adicionais:
         | categoria | Hamburgers                               |
         | descricao | 40 anos se especializando em trash food. |
         | horarios  | Funciona todos os dias, de 10h às 22h    |