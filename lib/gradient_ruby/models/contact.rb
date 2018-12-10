module GradientRuby
  module Models
    class Contact < APIModel
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
      attribute :physical_address, String
      attribute :client_spouse, Spouse

      json_attributes :name, :prefix, :first_name, :middle_name, :last_name, :suffix,
                      :date_of_birth, :gender, :marital_status

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
