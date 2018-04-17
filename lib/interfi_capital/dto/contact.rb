class InterfiCapital::Dto::Contact < InterfiCapital::Dto::Base

  attr_accessor :contact_method, :preferred_contact_time
  attr_accessor :details, :verified
  attr_accessor :is_preferred, :is_expired

  CONTACT_METHOD = [
    'HomeLandline', 'WorkLandline', 'PersonalMobilePhone', 'BusinessMobilePhone', 'PersonalFax',
    'BusinessFax', 'Pager', 'PersonalEmail', 'BusinessEmail', 'Website', 'Twitter '
  ].freeze
  PREFERRED_CONTACT_TIME = ['Morning', 'BusinessHours', 'AfterHours', 'AnyTime', 'Never'].freeze

  validate_reference_field(:contact_method)
  validate_reference_field(:preferred_contact_time)
end
