module InterfiCapital
  class Configuration
    attr_accessor :url, :api_key, :username, :password

    def initialize(args = {})
      @url = args[:url] || ENV['INTERFI_CAPITAL_URL']
      @api_key = args[:api_key] || ENV['INTERFI_CAPITAL_API_KEY']
      @username = args[:username] || ENV['INTERFI_CAPITAL_USERNAME']
      @password = args[:password] || ENV['INTERFI_CAPITAL_PASSWORD']
    end
  end
end
