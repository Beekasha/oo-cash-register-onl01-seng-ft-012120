class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = Array.new
    end

    def add_item(title, price, quantity=(1))
        @last_scan = price * quantity #void this line probably
        quantity.times do 
            @items << title
        end
        @total += (price * quantity)
    end

    def apply_discount
        if @discount > 0
            total_discount = ((@total / 100) * @discount)
            @total -= total_discount
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."    
        end
    end

    def void_last_transaction
        if @total == nil
            @total = 0.0
        else
            @total -= @last_scan
        end
    end
end

