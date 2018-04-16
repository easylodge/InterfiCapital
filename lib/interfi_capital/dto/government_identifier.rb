class InterfiCapital::Dto::GovernmentIdentifier < InterfiCapital::Dto::Base

  attr_accessor :identifier_type, :details
  attr_accessor :country_of_issue, :region_of_issue

  IDENTIFIER_TYPE = %w(VolumeNumber FolioNumber LpdpNumber).freeze
  COUNTRY_OF_ISSUE = [].freeze #no reference data provided
  REGION_OF_ISSUE = [].freeze #no reference data provided

  validate_reference_field(:identifier_type)
  validate_reference_field(:country_of_issue)
  validate_reference_field(:region_of_issue)
end
