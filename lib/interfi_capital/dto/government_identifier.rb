class InterfiCapital::Dto::GovernmentIdentifier < InterfiCapital::Dto::Base

  attr_accessor :identifier_type, :details, :is_new
  attr_accessor :country_of_issue, :region_of_issue

  IDENTIFIER_TYPE = ['VolumeNumber', 'FolioNumber', 'LpdpNumber'].freeze
  COUNTRY_OF_ISSUE = [
    'Oman', 'France', 'Denmark', 'Bahrain', 'South Africa', 'Saudi Arabia', 'Indonesia', 'Samoa',
    'Kuwait', 'Canada', 'Andorra', 'Åland Islands', 'Saint Barthélemy', 'United States', 'Ireland',
    'India', 'Sri Lanka', 'United Arab Emirates', 'Singapore', 'Qatar', 'Malaysia', 'Fiji',
    'Australia', 'The Netherlands', 'New Zealand', 'French Polynesia', 'Philippines', 'Japan',
    'China', 'United Kingdom', 'Mexico', 'Ukraine', 'Thailand', 'Uganda', 'Mongolia', 'Italy',
    'Brazil', 'New Caledonia', 'Hong Kong'
  ].freeze
  REGION_OF_ISSUE = [].freeze #no reference data provided

  validate_reference_field(:identifier_type)
  validate_reference_field(:country_of_issue)
  validate_reference_field(:region_of_issue)
end


