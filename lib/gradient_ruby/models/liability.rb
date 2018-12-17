module GradientRuby
  module Models
    class Liability < Base
      attribute :liability_type_id, String
      attribute :description, String
      attribute :maturity_date, DateTime
      attribute :account_number, String
      attribute :owners, Set[String]
      attribute :amounts, Set[Amount]
    end
  end
end
