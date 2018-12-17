module GradientRuby
  module Models
    class Contribution < Base
      attribute :modal, Float
      attribute :annualized, Float
      attribute :start_date, DateTime
      attribute :end_date, DateTime
      attribute :amount_to_date, Float
      attribute :premiums_to_date, Float
    end
  end
end
