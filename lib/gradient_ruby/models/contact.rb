module GradientRuby
  module Models
    class Contact < APIModel
      attribute :id, String
      attribute :name, String
      attribute :client, Client
      attribute :client_spouse, Spouse
      attribute :children, Set[Child]
      attribute :incomes, Set[Income]
      attribute :assets, Set[Asset]
      attribute :expenses, Set[Expense]
      attribute :liabilities, Set[Liability]
      attribute :investment_accounts, Set[Account]
      attribute :insurance_accounts, Set[Account]
      attribute :consumer_id, String
      attribute :display_name, String
      attribute :base64_encoded_file, String

      json_attributes :client, :client_spouse, :children,
                      :consumer_id, :display_name, :base64_encoded_file

      def save
        if @id
          response = @agent.put "clients/#{@id}", {body: json_params}
        else
          response = @agent.post "clients", {body: json_params}
        end

        self.class.new response, self
      end

      def upload
        response = @agent.post("documents", {body: json_params}) || {}

        self.class.new response, self
      end
    end
  end
end
