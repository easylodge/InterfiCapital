module InterfiCapital
  class Configuration
    attr_accessor :url, :api_key

    def initialize(args = {})
      @url = args[:url] || ENV['INTERFI_CAPITAL_URL']
      @api_key = args[:api_key]
    end
  end
end
