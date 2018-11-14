module GradientRuby
  class Client
    include GradientRuby::Connection
    include GradientRuby::Authentication
    include GradientRuby::Client::Contacts

    def initialize(options =  {})
      raise ArgumentError, 'API key or OAuth token required.' unless options[:api_key] || options[:oauth_token]

      @api_endpoint = options[:api_endpoint] || GradientRuby.config.api_endpoint
      @api_key = options[:api_key]
      @oauth_token = options[:oauth_token]
      @refresh_token = options[:refresh_token]
    end
  end
end
