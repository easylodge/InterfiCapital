class InterfiCapital::Dto::Party < InterfiCapital::Dto::Base

  attr_accessor :detail_type
  attr_accessor :association, :association_other
  attr_accessor :title, :first_name, :middle_names, :last_name, :known_as, :salutation, :date_of_birth
  attr_accessor :organisation_name, :organisation_legal_name, :date_of_incorporation
  attr_accessor :gender, :is_resident
  attr_accessor :country_of_birth, :country_of_citizenship, :country_of_residence
  attr_accessor :marital_status, :marital_status_other
  attr_accessor :number_of_dependents_over_threshold, :number_of_dependents_under_threshold
  attr_accessor :identification_documents
  attr_accessor :current_residential_address_id
  attr_accessor :post_settlement_residential_address_id
  attr_accessor :current_registered_address_id
  attr_accessor :post_settlement_registered_address_id
  attr_accessor :current_trading_address_id
  attr_accessor :post_settlement_trading_address_id
  attr_accessor :current_mailing_address_id
  attr_accessor :post_settlement_mailing_address_id
  attr_accessor :contact_details
  attr_accessor :employment_history
  attr_accessor :direct_debit_bank_account_id
  attr_accessor :tags

  DETAIL_TYPE = ['Individual', 'Organisation'].freeze
  ASSOCIATION = [
    'PrimaryApplicant', 'AdditionalApplicant', 'Guarantor', 'Trust', 'Trustee', 'Originator',
    'MortgageManager', 'Solicitor', 'Valuer', 'Other'
  ].freeze
  TITLE = ['Mr', 'Mrs', 'Miss', 'Ms', 'Dr', 'Sir'].freeze
  GENDER = ['Male', 'Female', 'Indeterminate', 'Unknown'].freeze
  MARITAL_STATUS = [
    'Seperated', 'De facto', 'Married', 'Single', 'Divorced', 'Widowed', 'Domestic Partnership'
  ].freeze

  validate_reference_field(:detail_type)
  validate_reference_field(:association)
  validate_reference_field(:title)
  validate_reference_field(:gender)

end
