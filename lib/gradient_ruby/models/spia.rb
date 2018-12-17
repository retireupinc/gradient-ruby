module GradientRuby
  module Models
    class Spia < Base
      attribute :amount, Float
      attribute :value_date, DateTime
      attribute :spia_term_type_id, String
      attribute :annual_amount, Float
      attribute :term_years, Integer
    end
  end
end
