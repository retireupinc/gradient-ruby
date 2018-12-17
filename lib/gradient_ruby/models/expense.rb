module GradientRuby
  module Models
    class Expense < Base
      attribute :expense_type_id, String
      attribute :description, String
      attribute :monthly_expense, Float
      attribute :owners, Set[String]
    end
  end
end
