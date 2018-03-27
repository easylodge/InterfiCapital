require "base64"

module InterfiCapital
  class Origination
    def initialize(api_key=nil, username=nil, password=nil)
      @api_key = api_key || ENV['INTERFI_CAPITAL_API_KEY']
      @username = username
      @password = password
    end

    def encode_authentication
      @encoded_authorisation = Base64.encode64("#{@username}:#{@password}")
      @encoded_api_key = Base64.encode64(@api_key)
    end

    def create_loan(params)
      # populate the loan params into the expected structure and post it to the API
      data = {test: 'data'}
      post_url = InterfiCapital::Configuration.url
      post(post_url, data)
    end

    private

    def post(url, data = {})
      result = nil
      begin
        response = RestClient::Request.execute(
          method: :post,
          url: "#{url}",
          headers: {
            accept: :json,
            content_type: :json,
            Authorization: "Basic #{encoded_authorisation}",
            'X-Interfi-Authorisation': @encoded_api_key,
            params: data.to_json
          }
        )
        result = JSON.parse(response.body)

        # TODO intercept the response and make ssense of it
        # if(result['messages'])
        #   server_rescue(result['messages'].first)
        # end

      rescue => e
        http_rescue(e)
      rescue JSON::ParserError => json_err
        json_rescue(json_err, response)
      end

      return result
    end

    def self.http_rescue error
      raise InterfiCapital::ServerError.new(error), "HTTP Code #{error.response['code']}: #{error.response['message']}"
    end

    def self.json_rescue error, response
      raise InterfiCapital::ServerError.new(response) , "Invalid result data. Could not parse JSON response body \n #{error.message}"
    end
  end

  class InterfiCapital::ServerError < StandardError

    def initialize(response=nil)
      @response = response
    end

    attr_reader :response
  end

  class Configuration
    attr_accessor :url, :api_key

    def initialize(args = {})
      @url = args[:url]
      @api_key = args[:api_key]
    end
  end
end
