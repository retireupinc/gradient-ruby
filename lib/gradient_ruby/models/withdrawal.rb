module GradientRuby
  module Models
    class Withdrawal < Base
      attribute :account_withdrawal_type, String
      attribute :account_withdrawal_mode_type, String
      attribute :withdrawal_amount, Float
      attribute :withdrawal_date, DateTime
      attribute :start_date, DateTime
      attribute :end_date, DateTime
      attribute :withdrawals_to_date, Float
    end
  end
end
