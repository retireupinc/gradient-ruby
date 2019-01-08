module GradientRuby
  module Models
    class Holding < Base
      attribute :ticker, String
      attribute :market_value, Float
    end
  end
end
