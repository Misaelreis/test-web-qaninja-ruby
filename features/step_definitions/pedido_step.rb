Dado("que eu fechei o pedido com os itens:") do |table|
    @produto_lista = table.hashes
    steps %{
        Quando eu adiciono todos os itens
    }
    @restaurant_menu.cart.close
end
  
Dado("informei os meus dados de entrega:") do |table|
   user = table.rows_hash
   @order.fill_user(user)
end
  
Quando("eu finalizo o pedido com {string}") do |payment|
    @order.checkout(payment)
end
  
Então("devo ver a seguinte mensagem:") do |mensagem|
    expect(@order.finalizar_pedido).to have_text mensagem
end