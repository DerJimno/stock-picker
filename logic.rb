def stock_picker(prices)

    profit_counter = 0
    best_buy_sell_days = ""
    
    prices.each_with_index do |element1, index1|
        prices.each_with_index do |element2, index2|

            profit = element2 - element1 

            if  profit > profit_counter && index1 < index2 # (2nd part ensures the price never goes any higher)
                profit_counter = profit # => 12 in that case
                best_buy_sell_days = [index1, index2]
            end
        end
    end

    p best_buy_sell_days
    best_buy_sell_days

end
stock_picker([17,3,6,9,15,8,6,1,10])