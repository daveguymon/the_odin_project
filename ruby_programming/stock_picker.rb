def stock_picker(prices)
  day_to_buy = 0
  day_to_sell = 0
  profit = 0

  while day_to_buy < prices.length
    day_to_sell = day_to_buy + 1
    while day_to_sell < prices.length
      if prices[day_to_sell] - prices[day_to_buy] > profit
        optimal_days = Array[day_to_buy, day_to_sell]
        profit = prices[day_to_sell] - prices[day_to_buy]
      end
      day_to_sell += 1
    end
    day_to_buy += 1
  end

  optimal_days
end
