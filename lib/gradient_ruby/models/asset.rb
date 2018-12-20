module GradientRuby
  module Models
    class Asset < Base
      attribute :id, String
      attribute :asset_type, String
      attribute :description, String
      attribute :account_number, String
      attribute :owners, Set[String]
      attribute :asset_value_models, Set[Value]
    end
  end
end
