Dado("que temos os seguintes restaurantes") do |table|
    @restaurante_data = table.hashes
end

Quando("acesso a lista de restaurantes") do
    @restaurant_page.load
end

Então("devo ver todos os restaurantes desta lista") do
    restaurantes = @restaurant_page.list
    @restaurante_data.each_with_index do |value, index|
        expect(restaurantes[index]).to have_text value['nome'].upcase
        expect(restaurantes[index]).to have_text value['categoria']
        expect(restaurantes[index]).to have_text value['entrega']
        expect(restaurantes[index]).to have_text value['avaliação']
    end
end