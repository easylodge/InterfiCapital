class InterfiCapital::Dto::Account < InterfiCapital::Dto::Base

  attr_accessor :product_code, :product_description, :decription, :opening_limit
  attr_accessor :fixed_interest, :fixed_interest_term_in_months
  attr_accessor :interest_only_repayments, :interest_only_term_in_months
  attr_accessor :installment_frequency, :direct_debit
  attr_accessor :principal_and_interest_instalment, :interest_only_installment
  attr_accessor :rate_components, :tags, :repayments

end
