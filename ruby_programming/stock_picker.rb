def stock_picker(stocks)
  day_to_buy = 0
  day_to_sell = 0
  profit = 0

  stocks.each_with_index do |price1, idx1|
    stocks.each_with_index do |price2, idx2|
      if idx1 < idx2 && (price2 - price1) > profit
        day_to_buy = idx1
        day_to_sell = idx2
        profit = price2 - price1
      end
    end
  end

  puts "Buy on day #{day_to_buy}; Sell on day #{day_to_sell}; Your profit will be $#{profit}!"

end

stock_picker([17,3,6,9,15,8,6,1,10])
