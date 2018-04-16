class InterfiCapital::Dto::Disbursement < InterfiCapital::Dto::Base

  attr_accessor :account_id, :transaction_type_code, :description, :amount

  TRANSACTION_TYPE_CODE = [].freeze #no reference data provided

  validate_reference_field(:transaction_type_code)
end
