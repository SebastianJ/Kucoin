module Kucoin
  module Rest
    module Public
      module Currencies
        
        def exchange_rates(coins: "btc", options: {})
          params = {
            coins: coins.to_s.upcase,
          }

          get("/open/currencies", params: params, options: options)&.dig("data", "rates")
        end
      
      end
    end
  end
end
