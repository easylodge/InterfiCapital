class InterfiCapital::Dto::MortgageInsurance < InterfiCapital::Dto::Base

  attr_accessor :purpose, :type_of_cover_id, :type_of_cover_name
  attr_accessor :provider_id, :provider_name
  attr_accessor :policy_number, :approved_on, :effective_from, :effective_to
  attr_accessor :premium_paid, :comment

  PURPOSE = ['Origination', 'FurtherAdvance'].freeze

  validate_reference_field(:purpose)
end
