module GradientRuby
  module Models
    class Contact < APIModel
      attribute :id, String
      attribute :name, String
      attribute :client, GradientRuby::Models::Client
      attribute :client_spouse, GradientRuby::Models::Spouse

      json_attributes :client, :client_spouse

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
