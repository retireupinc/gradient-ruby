module GradientRuby
  module Models
    class Liability < Base
      attribute :id, String
      attribute :liability_type, String
      attribute :description, String
      attribute :maturity_date, DateTime
      attribute :account_number, String
      attribute :owners, Set[String]
      attribute :amounts, Set[Amount]
    end
  end
end
