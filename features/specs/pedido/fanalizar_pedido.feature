#language: pt

@rd
@green_food
Funcionalidade: Finalizar pedido
    para que eu possa receber o pedido no meu endereço
    sendo um usuário que fechou o carrinho com itens
    posso finalizar o meu pedido

    Cenário: Finalizar pedido com cartão refeição
        Dado que eu fechei o pedido com os itens:
            | quantidade | nome                | descricao                                | subtotal | 
            | 1          | Suco Detox          | Suco de couve, cenoura, salsinha e maçã. | R$ 14,90 |
            | 2          | Hamburger de Quinoa | Cheio de fibras e muito saboroso.        | R$ 21,00 |
        E informei os meus dados de entrega:
            | nome        | Misael              |
            | email      | misael.qa@email.com |
            | rua         | Avenida Afonso pena |
            | numero      | 1701                |
            | complemento | QA                  |
        Quando eu finalizo o pedido com "Cartão Refeição"
        Então devo ver a seguinte mensagem:
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """

