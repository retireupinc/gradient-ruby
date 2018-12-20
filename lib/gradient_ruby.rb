require 'httparty'
require 'virtus'

require_relative 'gradient_ruby/version'
require_relative 'gradient_ruby/errors'
require_relative 'gradient_ruby/connection'
require_relative 'gradient_ruby/authentication'
require_relative 'gradient_ruby/models/base'
require_relative 'gradient_ruby/models/api_model'
require_relative 'gradient_ruby/models/spia'
require_relative 'gradient_ruby/models/annuity'
require_relative 'gradient_ruby/models/withdrawal'
require_relative 'gradient_ruby/models/product'
require_relative 'gradient_ruby/models/value'
require_relative 'gradient_ruby/models/contribution'
require_relative 'gradient_ruby/models/account'
require_relative 'gradient_ruby/models/liability'
require_relative 'gradient_ruby/models/expense'
require_relative 'gradient_ruby/models/asset'
require_relative 'gradient_ruby/models/income'
require_relative 'gradient_ruby/models/phone'
require_relative 'gradient_ruby/models/address'
require_relative 'gradient_ruby/models/child'
require_relative 'gradient_ruby/models/client'
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
      @api_endpoint = 'https://retireupapialpha.konnexme.com'
      @token_url = "https://loginalpha.konnexme.com/identity/connect/token"
    end
  end
end
