class InterfiCapital::Dto::Account < InterfiCapital::Dto::Base

  attr_accessor :product_code, :description, :opening_limit, :product_description #not currently in use :product_description
  attr_accessor :fixed_interest, :fixed_interest_term_in_months
  attr_accessor :interest_only_repayments, :interest_only_term_in_months
  attr_accessor :instalment_frequency, :direct_debit
  attr_accessor :principal_and_interest_instalment, :interest_only_instalment
  attr_accessor :rate_components, :tags, :repayments

  INSTALMENT_FREQUENCY = ['Once', 'Weekly', 'Fortnightly', 'Monthly', 'Annually'].freeze

  validate_reference_field(:instalment_frequency)

end
