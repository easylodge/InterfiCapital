class InterfiCapital::Dto::IdentificationDocument < InterfiCapital::Dto::Base
  attr_accessor :identification_document_type
  attr_accessor :other_description
  attr_accessor :country_of_issue, :region_of_issue, :issue_date
  attr_accessor :number, :details, :sighted, :validated, :scored, :score_value

  IDENTIFICATION_DOCUMENT_TYPE = %w(DriversLicence BirthCertificate PartialBirthCertificate BankStatement UtilityBill RegisteredBusinessNumber Other).freeze
  COUNTRY_OF_ISSUE = [].freeze #no values provided

  validate_reference_field(:identification_document_type)
  validate_reference_field(:country_of_issue)
end
