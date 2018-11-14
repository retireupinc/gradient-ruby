module GradientRuby
  module Authentication
    def refresh_access_token!
      raise ArgumentError, 'Refresh token required.' unless @refresh_token

      params = {
        headers: {
          'Accept' => 'application/json'
        },
        body: {
          grant_type: 'refresh_token',
          client_id: GradientRuby.config.client_id,
          client_secret: GradientRuby.config.client_secret,
          refresh_token: @refresh_token
        }
      }

      response = handle_response(HTTParty.post(GradientRuby.config.token_url, params))

      @oauth_token = response['access_token']
      @refresh_token = response['refresh_token']

      {
        oauth_token: response['access_token'],
        refresh_token: response['refresh_token']
      }
    end
  end
end
