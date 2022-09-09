def stock_picker(stocks)
  min_price = stocks[0]
  min_index = 0
  profit = 0
  best_days = [0,0]

  stocks.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
      next
    end

    if price - min_price > profit
      profit = price - min_price
      best_days = [min_index, index
      ]
    end
  end
  best_days
end
stocks = [20, 23,12,2,12,200]
p stock_picker(stocks)