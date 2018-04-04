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
  attr_accessor :currentTrading_address_id
  attr_accessor :post_settlement_trading_address_id
  attr_accessor :currentMailing_address_id
  attr_accessor :post_settlement_mailing_address_id
  attr_accessor :contact_details
  attr_accessor :employment_history
  attr_accessor :direct_debit_bank_account_id
  attr_accessor :tags

  DETAIL_TYPE = %w(Individual Organisation).freeze
  ASSOCIATION = %w(PrimaryApplicant AdditionalApplicant Guarantor Trust Trustee Originator MortgageManager Solicitor Valuer Other).freeze

  def detail_type=(value)
    unless DETAIL_TYPE.include?(value)
      raise "The detail_type value must be one of #{DETAIL_TYPE.join(', ')}"
    else
      @detail_type = value
    end
  end

  def association=(value)
    unless ASSOCIATION.include?(value)
      raise "The association value must be one of #{ASSOCIATION.join(', ')}"
    else
      @association = value
    end
  end
end


