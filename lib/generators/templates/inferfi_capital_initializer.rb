InterfiCapital.configure do |config|
  # config.url = 'https://your-server/capital/api/v2/origination'
  config.url = Rails.config.interfi_capital_url + '/capital/api/v2/origination'
end


