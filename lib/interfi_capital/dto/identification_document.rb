class InterfiCapital::Dto::IdentificationDocument < InterfiCapital::Dto::Base

  attr_accessor :identification_document_type
  attr_accessor :other_description
  attr_accessor :country_of_issue, :region_of_issue, :issue_date
  attr_accessor :number, :details, :sighted, :validated, :scored, :score_value

  IDENTIFICATION_DOCUMENT_TYPE = [
    'DriversLicence', 'BirthCertificate', 'PartialBirthCertificate', 'BankStatement',
    'UtilityBill', 'RegisteredBusinessNumber', 'Other'
  ].freeze
  COUNTRY_OF_ISSUE = [
    'Oman', 'France', 'Denmark', 'Bahrain', 'South Africa', 'Saudi Arabia', 'Indonesia', 'Samoa',
    'Kuwait', 'Canada', 'Andorra', 'Åland Islands', 'Saint Barthélemy', 'United States', 'Ireland',
    'India', 'Sri Lanka', 'United Arab Emirates', 'Singapore', 'Qatar', 'Malaysia', 'Fiji',
    'Australia', 'The Netherlands', 'New Zealand', 'French Polynesia', 'Philippines', 'Japan',
    'China', 'United Kingdom', 'Mexico', 'Ukraine', 'Thailand', 'Uganda', 'Mongolia', 'Italy',
    'Brazil', 'New Caledonia', 'Hong Kong'
  ].freeze

  validate_reference_field(:identification_document_type)
  validate_reference_field(:country_of_issue)
end
