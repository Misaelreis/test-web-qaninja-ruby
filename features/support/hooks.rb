Before do
    page.current_window.resize_to(1440, 900)
    @cart = CartPage.new
end

Before("@breadbakery") do
    visit('/restaurants/bread-bakery/menu')
end