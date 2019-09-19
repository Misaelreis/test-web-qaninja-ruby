Quando("acesso a lista de restaurantes") do
    visit ('/restaurants')
end
  
Então("vejo todas as opções disponíveis") do
    restaurantes = all('.restaurant-item') #metodo all devolve um array
    puts restaurantes.size
    expect(restaurantes.size).to be > 0
end
  
Então("cada restaurante deve exibir sua categoria") do
    restaurant_data = [
        {name: 'Bread & Bakery', category:'Padaria', delivery_time: '25 minutos', rating: '4.9'},
        {name: 'Burger House', category:'Hamburgers', delivery_time: '30 minutos', rating: '3.5'}
    ]

    restaurants = all('.restaurant-item')
    restaurant_data.each_with_index do |value, index|
        expect(restaurants[index]).to have_text value[:category]
    end
end
  
Então("cada restaurante deve exibir o tempo de entrega") do
pending # Write code here that turns the phrase above into concrete actions
end
  
Então("cada restaurante deve exibir sua nota de avaliação") do
pending # Write code here that turns the phrase above into concrete actions
end