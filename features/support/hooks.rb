Before do
    #page.current_window.resize_to(1440, 900)
    @restaurant_page = RestaurantPage.new
    @restaurant_menu = RestauranteMenu.new
    @order = OrderPage.new
end

Before("@breadbakery") do
    visit('/restaurants/bread-bakery/menu')
end

Before("@green_food") do
    visit('/restaurants/green-food/menu')
end