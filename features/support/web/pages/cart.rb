class CartPage
    #incluindo recurso do capybara na classe
    include Capybara::DSL
    def box
        find('#shopping-cart')
    end

    def total
        box.find('tr', text: 'Total:').find('td')
    end

    def remover_item (item)
        box.all('table tbody tr')[item].find(".danger").click
    end

    def list 
        find('.menu-item-info-box', text: @produto_nome.upcase).find('.add-to-cart').click
    end

    def item
        find(".menu-item-info-box", text: p["nome"].upcase).find(".add-to-cart").click
    end
end