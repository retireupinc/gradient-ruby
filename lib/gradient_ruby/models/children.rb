module GradientRuby
  module Models
    class Children < Base
      attribute :first_name, String
      attribute :middle_name, String
      attribute :last_name, String
      attribute :date_of_birth, DateTime
    end
  end
end
