module GradientRuby
  module Models
    class Account < Base
      attribute :product_type_id, String
      attribute :name, String
      attribute :account_number, String
      attribute :policy_number, String
      attribute :issue_date, DateTime
      attribute :maturity_date, DateTime
      attribute :account_tax_type_id, String
      attribute :is_managed_money, Boolean
      attribute :account_vendor_products, Set[Product]
      attribute :owners, Set[String]
      attribute :values, Set[Value]
      attribute :premiums, Set[Contribution]
      attribute :investments, Set[Contribution]
      attribute :withdrawals, Set[Withdrawal]
      attribute :annuity_values, Set[Annuity]
      attribute :spia_values, Set[Spia]
    end
  end
end
