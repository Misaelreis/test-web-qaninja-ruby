Dado("que o produto desejado é {string}") do |produto|
    @produto_nome = produto
end
  
Dado("o valor do produto é de {string}") do |valor|
    @produto_valor = valor
end
  
Quando("eu adiciono {int} unidade\\(s)") do |quantidade|
    quantidade.times do
        @restaurant_menu.list(@produto_nome)
    end
end

Então("deve ser adicionado {int} unidade\\(s) deste item") do |qtd|
    expect(@restaurant_menu.cart.box).to have_text "(#{qtd}x) #{@produto_nome}"
end
  
Então("o valor total é de {string}") do |valor_total|
    expect(@restaurant_menu.cart.total.text).to eql valor_total
end

#lista de produtos
Dado("que os produtos desejados são:") do |table|
    @produto_lista = table.hashes
end
  
Quando("eu adiciono todos os itens") do
    @produto_lista.each do |p|
        p["quantidade"].to_i.times do 
            @restaurant_menu.list(p["nome"])
        end
    end
end
  
Então("vejo todos os itens no carrinho") do
    @produto_lista.each do |p|
        expect(@restaurant_menu.cart.box).to have_text "(#{p["quantidade"]}x) #{p["nome"]}"
    end
end

#remover itens
Dado("que eu tenha os seguintes itens no carrinho") do |table|
    @produto_lista = table.hashes
    steps %{
        Quando eu adiciono todos os itens
    }
end
  
Quando("eu removo somente o item {int}") do |item|
    @restaurant_menu.cart.remover_item(item)
end

Quando("eu removo somente o {int}") do |item|
    @restaurant_menu.cart.remover_item(item)
end

Quando("eu removo todos os itens") do
    @produto_lista.each_with_index do |value, indx|
        @restaurant_menu.cart.remover_item(indx)
    end
end

Quando("eu limpo o meu carrinho") do
    @restaurant_menu.cart.clean
end
  
Então("vejo a seguinte mensagem no carrinho {string}") do |mensagem|
    expect(@restaurant_menu.cart.box).to have_text mensagem
end