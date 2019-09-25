Before do
    page.current_window.resize_to(1440, 900)
    @restaurant_page = RestaurantPage.new
    @restaurant_menu = RestauranteMenu.new
end

Before("@breadbakery") do
    visit('/restaurants/bread-bakery/menu')
end