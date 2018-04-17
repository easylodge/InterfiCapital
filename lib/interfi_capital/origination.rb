require "base64"
require 'rest-client'
require 'json'

class InterfiCapital::Origination
  def initialize(api_key=nil, username=nil, password=nil)
    @api_key = api_key || ENV['INTERFI_CAPITAL_API_KEY']
    @username = username || ENV['INTERFI_CAPITAL_USERNAME']
    @password = password|| ENV['INTERFI_CAPITAL_PASSWORD']
  end

  def encode_authentication
    @encoded_authorisation = Base64.encode64("#{@username}:#{@password}")
    @encoded_api_key = Base64.encode64(@api_key)
  end

  def originate(financial_application)
    post(InterfiCapital.configuration.url, financial_application.to_hash)
  end

  private

  def post(url, data = {})
    result = nil
    response = nil
    begin
      response = ::RestClient::Request.execute(
        method: :post,
        url: "#{url}",
        verify_ssl: false,
        headers: {
          accept: :json,
          content_type: :json,
          Authorization: "Basic #{@encoded_authorisation}",
          'X-Interfi-Authorisation': @encoded_api_key,
          params: data.to_json
        }
      )
      result = ::JSON.parse(response.body)

      # TODO intercept the response and process it
      # if(result['messages'])
      #   server_rescue(result['messages'].first)
      # end

    rescue ::JSON::ParserError => e
      json_rescue(e, response)
    rescue ::RestClient::Exception => e
      http_rescue(e)
    end

    return result
  end

  def http_rescue(error)
    raise InterfiCapital::ServerError.new(error.response), error.message
  end

  def json_rescue(error, response)
    raise InterfiCapital::ServerError.new(response) , "Invalid result data. Could not parse JSON response body \n #{error.message}"
  end
end

