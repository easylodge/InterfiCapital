require "base64"
require 'faraday'
require 'json'
require 'active_support'
require 'active_support/core_ext'
require 'interfi_capital/result'

class InterfiCapital::Origination
  def initialize(args = {})
    @api_key = args[:api_key] || ENV['INTERFI_CAPITAL_API_KEY']
    @username = args[:username] || ENV['INTERFI_CAPITAL_USERNAME']
    @password = args[:password]|| ENV['INTERFI_CAPITAL_PASSWORD']
    encode_authentication
  end

  def encode_authentication
    valid_credentials?
    @encoded_authorisation = Base64.encode64("#{@username}:#{@password}").strip
    @encoded_api_key = Base64.encode64(@api_key).strip
  end

  def originate(financial_application)
    response = post(InterfiCapital.configuration.url, financial_application.to_hash)
    InterfiCapital::Result.new(response)
  end

  private

  def post(url, data = {})
    result = nil
    response = nil
    begin
      response = post_connection(url).post do |req|
        req.headers['Content-Type'] = 'application/json'
        req.headers['Accept'] = 'application/json'
        req.headers['Authorization'] = "Basic #{@encoded_authorisation}"
        req.headers['X-Interfi-Authorisation'] = @encoded_api_key
        req.body = data.to_json
      end

      result = ::JSON.parse(response.body)

    rescue ::JSON::ParserError => e
      json_rescue(e, response)
    rescue ::Faraday::ClientError => e
      http_rescue(e)
    end

    return result
  end

  def valid_credentials?
    raise InterfiCapital::Dto::ValidationError.new("Please provide API key!") unless @api_key.present?
    raise InterfiCapital::Dto::ValidationError.new("Please provide Username!") unless @username.present?
    raise InterfiCapital::Dto::ValidationError.new("Please provide Password!") unless @password.present?
    true
  end

  def post_connection(url)
    Faraday.new(url: URI("#{url}"), ssl: { verify: false } ) do |faraday|
      faraday.request  :url_encoded
      faraday.response :logger
      faraday.adapter  Faraday.default_adapter
    end
  end

  def http_rescue(error)
    raise InterfiCapital::ServerError.new(error.response), error.message
  end

  def json_rescue(error, response)
    raise InterfiCapital::ServerError.new(response) , "Invalid result data. Could not parse JSON response body \n #{error.message}"
  end
end

