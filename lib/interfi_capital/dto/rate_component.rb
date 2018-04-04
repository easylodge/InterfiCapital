class InterfiCapital::Dto::RateComponent < InterfiCapital::Dto::Base

  attr_accessor :rate_type, :rate_class_code
  attr_accessor :start_from, :stop_on
  attr_accessor :effective_from, :effective_to
  attr_accessor :number_of_months
  attr_accessor :add_to_delivery_rate
  attr_accessor :component_type

  START_FROM = %w(Default Settlement InterestOnlyExpiry FixedExpiry Date)
  STOP_ON = %w(Default Maturity NumberOfMonths Date InterestOnlyExpiry FixedExpiry)
  COMPONENT_TYPE = %w(Variable Fixed Other)

  def start_from=(value)
    unless START_FROM.includes?(value)
      raise "The start_from value must be one of #{START_FROM.joins(', ')}"
    else
      @start_from = value
    end
  end

  def stop_on=(value)
    unless stop_on.includes?(value)
      raise "The stop_on value must be one of #{STOP_ON.joins(', ')}"
    else
      @stop_on = value
    end
  end

  def component_type=(value)
    unless component_type.includes?(value)
      raise "The component_type value must be one of #{COMPONENT_TYPE.joins(', ')}"
    else
      @component_type = value
    end
  end
end
