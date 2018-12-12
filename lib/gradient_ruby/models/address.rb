module GradientRuby
  module Models
    class Address < Base
      attribute :street, String
      attribute :street2, String
      attribute :city, String
      attribute :state_or_province, String
      attribute :zip_code, String
    end
  end
end
