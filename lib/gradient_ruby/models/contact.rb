module GradientRuby
  module Models
    class Contact < APIModel
      {
        "Id": 0,
        "Title": "string",
        "FirstName": "string",
        "MiddleName": "string",
        "LastName": "string",
        "Suffix": "string",
        "Status": "string",
        "Gender": "string",
        "DateOfBirth": "2018-08-16T13:15:57.740Z",
        "SocialSecurityNumber": "string",
        "Greeting": "string",
        "DriversLicenseNumber": "string",
        "DriversLicenseState": "string",
        "DriversLicenseExpirationDate": "2018-08-16T13:15:57.740Z",
        "IsCitizen": true,
        "Age": 0,
        "MaritalStatus": "string",
        "EmailAddresses": [
          {
            "Id": 0,
            "ConsumerId": 0,
            "EmailAddressType": "string",
            "EmailAddress": "string",
            "IsPreferred": true
          }
        ],
        "PhoneNumbers": [
          {
            "Id": 0,
            "ConsumerId": 0,
            "PhoneNumberType": "string",
            "PhoneNumber": 0,
            "Extension": 0,
            "IsPreferred": true
          }
        ],
        "PhysicalAddresses": [
          {
            "Id": 0,
            "ConsumerId": 0,
            "IsOwner": true,
            "PhysicalAddressId": 0,
            "PhysicalAddressType": "string",
            "IsPreferred": true,
            "PhysicalAddress": {
              "Id": 0,
              "Street": "string",
              "Street2": "string",
              "City": "string",
              "StateOrProvince": "string",
              "ZipCode": 0
            }
          }
        ],
        "Retirement": {
          "ConsumerId": 0,
          "DesiredRetirementAge": 0,
          "DesiredRetirementAnnualIncome": 0,
          "DescriptionOfGoals": "string",
          "IsRetired": true,
          "ActualRetirementAge": 0,
          "IntendToWorkInRetirement": true,
          "RetirementWorkingIncome": 0,
          "DesiredRetirementInflation": 0
        },
        "SocialSecurity": {
          "ConsumerId": 0,
          "OverrideLifeExpectancy": true,
          "ExpectedAgeAtDeath": 0,
          "PrimaryInsuranceAmount": 0,
          "CurrentBenefitAmount": 0,
          "BenefitFirstReceivedDate": "2018-08-16T13:15:57.741Z",
          "IsAlreadyReceivingBenefits": true,
          "SsdiBenefitAmount": 0,
          "HasSsdi": true,
          "CurrentAnnualIncome": 0,
          "FullRetirementBenefit": 0,
          "SocialSecurityBenefitTypeId": 0,
          "AnticipatedBenefitAge": 0,
          "ColaAssumption": 0,
          "IncludeMedicareEstimates": true,
          "ExsDateOfBirth": "2018-08-16T13:15:57.741Z",
          "HasBeenDivorced": true,
          "ExsPrimaryInsuranceAmount": 0,
          "DeceasedDateOfBirth": "2018-08-16T13:15:57.741Z",
          "HasBeenWidowed": true,
          "DeceasedPrimaryInsuranceAmount": 0,
          "SpousalSurvivorBenefitAmount": 0,
          "HasWorkedAsGovernmentEmployee": true
        },
        "FinancialPriorities": {
          "ConsumerId": 0,
          "AvoidingLosses": 0,
          "Saving": 0,
          "Income": 0,
          "LessTax": 0,
          "BetterReturn": 0,
          "Legacy": 0
        }
      }
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
      attribute :DriversLicenseExpirationDate, DateTime,
      attribute :IsCitizen, Boolean,
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
