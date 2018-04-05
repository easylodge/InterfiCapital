require 'interfi_capital/version'
require 'interfi_capital/origination'
require 'httparty'
require 'interfi_capital/railtie' if defined?(Rails)
require 'interfi_capital/configuration'
require 'interfi_capital/dto' #this will include all sub-modules and classes we need

module InterfiCapital
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.reset
    @configuration = Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
