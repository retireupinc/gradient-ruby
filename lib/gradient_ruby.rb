require 'httparty'
require 'virtus'

require_relative 'gradient_ruby/version'
require_relative 'gradient_ruby/errors'
require_relative 'gradient_ruby/connection'
require_relative 'gradient_ruby/authentication'
require_relative 'gradient_ruby/models/base'
require_relative 'gradient_ruby/models/api_model'
require_relative 'gradient_ruby/models/contact'
require_relative 'gradient_ruby/client/contacts'
require_relative 'gradient_ruby/client'

module GradientRuby
  class << self
    attr_accessor :config

    def config
      @configuration ||= Configuration.new
    end

    def configure
      yield config
    end
  end

  class Configuration
    attr_accessor :client_id, :client_secret, :api_endpoint, :token_url

    def initialize
      @api_endpoint = 'https://api.konnexme.com/v1/'
      @token_url = "https://app.konnexme.com/oauth/token"
    end
  end
end
