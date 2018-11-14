module GradientRuby
  module Models
    class Contact < APIModel
      attribute :Id, Integer
      attribute :Title, String
      attribute :FirstName, String
      attribute :MiddleName, String
      attribute :LastName, String
      attribute :Suffix, String
      attribute :Status, String
      attribute :Gender, String
      attribute :DateOfBirth, DateTime
      attribute :SocialSecurityNumber, String
      attribute :Greeting, String
      attribute :DriversLicenseNumber, String
      attribute :DriversLicenseState, String
      attribute :DriversLicenseExpirationDate, DateTime
      attribute :IsCitizen, Boolean
      attribute :Age, Integer
      attribute :MaritalStatus, String
      attribute :EmailAddresses, Array
      attribute :PhoneNumbers, Array
      attribute :PhysicalAddresses, Array
      attribute :Retirement, Hash
      attribute :SocialSecurity, Hash
      attribute :FinancialPriorities, Hash

      json_attributes :FirstName, :MiddleName, :LastName, :Title, :Suffix, :DateOfBirth, :Gender,
                      :EmailAddresses, :MaritalStatus

      def save
        if @id
          response = @client.put "contacts/#{@id}", {body: json_params}
        else
          response = @client.post "contacts", {body: json_params}
        end

        self.class.new response, self
      end
    end
  end
end
