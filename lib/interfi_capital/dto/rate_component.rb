class InterfiCapital::Dto::RateComponent < InterfiCapital::Dto::Base

  attr_accessor :rate_type, :rate_class_code , :rate, :override_rate, :is_new
  attr_accessor :start_from, :stop_on
  attr_accessor :effective_from, :effective_to
  attr_accessor :number_of_months
  attr_accessor :add_to_delivery_rate
  attr_accessor :component_type

  RATE_TYPE = ['ManagementFee'].freeze
  START_FROM = ['Default', 'Settlement', 'InterestOnlyExpiry', 'FixedExpiry', 'Date'].freeze
  STOP_ON = ['Default', 'Maturity', 'NumberOfMonths', 'Date', 'InterestOnlyExpiry', 'FixedExpiry'].freeze
  COMPONENT_TYPE = ['Variable', 'Fixed', 'Other'].freeze

  validate_reference_field(:rate_type)
  validate_reference_field(:start_from)
  validate_reference_field(:stop_on)
  validate_reference_field(:component_type)

end
