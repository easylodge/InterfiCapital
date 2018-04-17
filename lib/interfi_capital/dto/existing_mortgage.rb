class InterfiCapital::Dto::ExistingMortgage < InterfiCapital::Dto::Base

  attr_accessor :priority_holder, :registered_number, :application_number
  attr_accessor :instrument_number, :account_number, :date_recorded, :position_principal
  attr_accessor :position_schedule, :position_lvr, :lvr_at_origination, :lvr_source
  attr_accessor :deed_of_priority_amount

  LVR_SOURCE = ['Principal', 'Schedule', 'CreditLimit'].freeze

  validate_reference_field(:lvr_source)
end
