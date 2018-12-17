module GradientRuby
  module Models
    class Annuity < Base
      attribute :annuity_date, DateTime
      attribute :surrender, Float
      attribute :availability_free_withdrawal, Float
      attribute :income_rider, Float
      attribute :death_benefit_rider, Float
    end
  end
end
