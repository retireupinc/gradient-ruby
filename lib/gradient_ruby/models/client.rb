module GradientRuby
  module Models
    class Client < Base
      attribute :id, String
      attribute :name, String
      attribute :prefix, String
      attribute :first_name, String
      attribute :middle_name, String
      attribute :last_name, String
      attribute :suffix, String
      attribute :gender, String
      attribute :date_of_birth, DateTime
      attribute :drivers_license_number, String
      attribute :drivers_license_state, String
      attribute :drivers_license_expiration_date, DateTime
      attribute :is_citizen, Boolean
      attribute :marital_status, String
      attribute :phone_number, String
    end
  end
end
