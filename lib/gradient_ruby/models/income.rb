module GradientRuby
  module Models
    class Income < Base
      attribute :income_type, String
      attribute :description, String
      attribute :start_age, Integer
      attribute :end_age, Integer
      attribute :monthly_income, Float
      attribute :annual_growth_percentage, Float
      attribute :beneficiary_percentage, Float
      attribute :owners, Set[String]
    end
  end
end
