Dado("que eu acesso a lista de restaurantes") do
    visit ('/restaurants')
end

Quando("eu escolho o restaurante {string}") do |restaurante|
    find('.restaurant-item', text: restaurante.upcase).click
end
  
Então("eu vejo os seguintes itens no cardápio:") do |table|
    items = all('.menu-item-info-box')
    produto_dados = table.hashes
    produto_dados.each_with_index do |value, index|
        expect(items[index]).to have_text value["produto"].upcase
        expect(items[index]).to have_text value["descricao"]
        expect(items[index]).to have_text value["preco"]
    end
end

Então("eu vejo as seguintes informações adicionais:") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    infos = table.rows_hash
    detail = find('#detail')
    expect(detail).to have_text infos['categoria']
    expect(detail).to have_text infos['descricao']
    expect(detail).to have_text infos['horarios']
end