module GradientRuby
  module Models
    class Account < Base
      attribute :id, String
      attribute :product_type, String
      attribute :name, String
      attribute :account_number, String
      attribute :policy_number, String
      attribute :issue_date, DateTime
      attribute :maturity_date, DateTime
      attribute :account_tax_type, String
      attribute :product_sub_type, String
      attribute :is_managed_money, Boolean
      attribute :account_vendor_products, Set[Product]
      attribute :owners, Set[String]
      attribute :latest_value, Value
      attribute :premiums, Set[Contribution]
      attribute :investments, Set[Contribution]
      attribute :withdrawals, Set[Withdrawal]
      attribute :annuity_values, Annuity
      attribute :spia_values, Spia
      attribute :holdings, Set[Holding]
      attribute :life_key_value, Lkv
    end
  end
end
