class RestauranteMenu
    include Capybara::DSL

    def details 
        find("#detail")
    end

    def menu
        all(".menu-item-info-box")
    end
    
    def list (nome)
        find('.menu-item-info-box', text: nome.upcase).find(".add-to-cart").click
    end

    def cart
        CartView.new
    end
end