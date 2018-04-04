class InterfiCapital::Dto::FinancialApplication < InterfiCapital::Dto::Base

  attr_accessor :amends_existing_application, :application_received_date, :application_approved_date, :anticipated_settlement_date
  attr_accessor :application_amount, :approved_amount, :term_in_months
  attr_accessor :purpose, :description, :documentation_level
  attr_accessor :bank_accounts, :addresses, :parties
  attr_accessor :assets, :liabilities, :incomes, :expenses
  attr_accessor :first_homeowners_grant, :regulated
  attr_accessor :accounts, :offset_accounts
  attr_accessor :property_securities, :vehicle_securities, :other_securities
  attr_accessor :disbursements, :fees, :tags
  attr_accessor :ineligibility
  attr_accessor :mortgage_insurance
  attr_accessor :existing_application_number
  attr_accessor :first_account_number
  attr_accessor :approve, :settle

end
