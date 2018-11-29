module GradientRuby
  module Models
    class Contact < APIModel
      attribute :id, Integer
      attribute :title, String
      attribute :first_name, String
      attribute :middle_name, String
      attribute :last_name, String
      attribute :suffix, String
      attribute :status, String
      attribute :gender, String
      attribute :date_of_birth, DateTime
      attribute :social_security_number, String
      attribute :greeting, String
      attribute :drivers_license_number, String
      attribute :drivers_license_state, String
      attribute :drivers_license_expiration_date, DateTime
      attribute :is_citizen, Boolean
      attribute :age, Integer
      attribute :marital_status, String
      attribute :email_addresses, Array
      attribute :phone_numbers, Array
      attribute :physical_addresses, Array
      attribute :retirement, Hash
      attribute :social_security, Hash
      attribute :financial_priorities, Hash

      json_attributes :first_name, :middle_name, :last_name, :title, :suffix, :date_of_birth, :gender,
                      :email_addresses, :marital_status

      def save
        if @id
          response = @client.put "clients/#{@id}", {body: json_params}
        else
          response = @client.post "clients", {body: json_params}
        end

        self.class.new response, self
      end
    end
  end
end
