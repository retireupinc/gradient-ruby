module GradientRuby
  module Models
    class Contact < APIModel
      attribute :id, String
      attribute :name, String
      attribute :client, Client
      attribute :client_spouse, Spouse

      json_attributes :client, :client_spouse

      def save
        if @id
          response = @agent.put "clients/#{@id}", {body: json_params}
        else
          response = @agent.post "clients", {body: json_params}
        end

        self.class.new response, self
      end
    end
  end
end
