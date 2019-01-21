module GradientRuby
  module Connection
    def get(url, options = {})
      request :get, url, options
    end

    def post(url, options = {})
      request :post, url, options
    end

    def put(url, options = {})
      request :put, url, options
    end

    def delete(url, options = {})
      request :delete, url, options
    end

    protected

    def endpoint
      @api_endpoint
    end

    private

    def request(method, path, options = {})
      options[:headers] = headers.merge(options[:headers] || {})
      Rails.logger.error("request: #{method} #{endpoint}/#{path.to_s} #{options.inspect}")
      handle_response(HTTParty.send(method, URI::Parser.new.escape("#{endpoint}/#{path.to_s}"), options))
    end

    def headers
      headers = {
        'Accept' => 'application/json'
      }

      if @api_key
        headers['ACCESS_TOKEN'] = @api_key
      end

      if @oauth_token
        headers['Authorization'] = "Bearer #{@oauth_token}"
      end

      headers
    end

    def handle_response(response)
      Rails.logger.error("response: #{response.inspect}")
      if response.code != 200
        case response.code
          when 401
            raise AuthorizationError.new(response.response.msg)
          else
            raise RequestError.new(response.response.msg)
        end
      end

      if response.parsed_response.blank? || response.parsed_response == 0
        nil
      else
        response.parsed_response
      end
    end

  end
end
