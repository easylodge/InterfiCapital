class InterfiCapital::Dto::Fee < InterfiCapital::Dto::Base

  attr_accessor :account_id, :capitalised
  attr_accessor :fee_transaction_type_code
  attr_accessor :description, :amount

  FEE_TRANSACTION_TYPE_CODE = [].freeze #no reference data provided

  validate_reference_field(:fee_transaction_type_code)
end
