class InterfiCapital::Dto::Ineligibility < InterfiCapital::Dto::Base

  attr_accessor :effective_from, :effective_to
  attr_accessor :cured_on, :reason_code

  REASON_CODE = ['Ineligble'].freeze

  validate_reference_field(:reason_code)
end
