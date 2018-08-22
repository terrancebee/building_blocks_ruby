def stock_picker(arr)
    buy = 0
    sell = 0
    buy_index = 0
    sell_index = 0

    arr.each_with_index do |price_a, index_a|
        arr.each_with_index do |price_b, index_b|
            next if index_b <= index_a
            if price_b - price_a > sell - buy
                buy = price_a
                buy_index = index_a
                sell = price_b
                sell_index = index_b
            end
        end
    end

    [buy_index, sell_index]
end

print stock_picker([17,3,6,9,15,8,6,1,10])