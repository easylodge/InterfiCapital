class InterfiCapital::Dto::PropertySecurity < InterfiCapital::Dto::Base

  attr_accessor :addresses
  attr_accessor :usage, :other_usage_description
  attr_accessor :property_usage_id, :property_usage_description
  attr_accessor :type, :property_type_id, :property_type_description
  attr_accessor :title_type, :property_title_type_id, :property_title_type_description
  attr_accessor :zoned, :property_zoning_id, :property_zoning_description
  attr_accessor :estimated_purchase_price, :actual_purchase_price
  attr_accessor :age_in_years
  attr_accessor :insured, :insurer, :insurance_expires, :insurance_verified, :insurance_policy_number
  attr_accessor :insured_amount, :premium_amount
  attr_accessor :government_identifiers
  attr_accessor :valuation_type, :valuation_date, :valuer, :valuation_amount
  attr_accessor :insurable_value, :rental_income, :valuation_amount_high, :valuation_amount_low
  attr_accessor :forced_sale_value, :is_new
  attr_accessor :existing_mortgages

  USAGE = ['Residence', 'Investment', 'Commercial', 'Other'].freeze
  TYPE = ['House', 'Unit', 'Apartment', 'VacantLand', 'Townhouse', 'Rural'].freeze
  TITLE_TYPE = ['Freehold', 'Leasehold', 'Strata'].freeze
  ZONED = ['Industrial', 'Residential'].freeze

  validate_reference_field(:usage)
  validate_reference_field(:type)
  validate_reference_field(:title_type)
  validate_reference_field(:zoned)
end
