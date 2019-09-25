Dado("que eu acesso a lista de restaurantes") do
    @restaurant_page.load
end

Quando("eu escolho o restaurante {string}") do |restaurante|
    @restaurant_page.go(restaurante)
end
  
Então("eu vejo os seguintes itens no cardápio:") do |table|
    itens = @restaurant_menu.menu
    produto_dados = table.hashes
    produto_dados.each_with_index do |value, index|
        expect(itens[index]).to have_text value["produto"].upcase
        expect(itens[index]).to have_text value["descricao"]
        expect(itens[index]).to have_text value["preco"]
    end
end

Então("eu vejo as seguintes informações adicionais:") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    infos = table.rows_hash
    detail = @restaurant_menu.details
    expect(detail).to have_text infos['categoria']
    expect(detail).to have_text infos['descricao']
    expect(detail).to have_text infos['horarios']
end