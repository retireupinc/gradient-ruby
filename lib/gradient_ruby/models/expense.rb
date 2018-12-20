module GradientRuby
  module Models
    class Expense < Base
      attribute :id, String
      attribute :expense_type, String
      attribute :description, String
      attribute :monthly_expense, Float
      attribute :owners, Set[String]
    end
  end
end
