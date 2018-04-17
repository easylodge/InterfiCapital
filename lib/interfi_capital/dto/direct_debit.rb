class InterfiCapital::Dto::DirectDebit < InterfiCapital::Dto::Base

  attr_accessor :repayment_calculation_frequency, :recurrence_frequency
  attr_accessor :starting_on, :amount

  REPAYMENT_CALCULATION_FREQUENCY = [
    'Once', 'Weekly', 'WeeklyFour', 'WeeklyTrue', 'Fortnightly', 'FortnightlyTwo', 'FortnightlyTrue',
    'Monthly', 'Annually'
  ].freeze
  RECURRENCE_FREQUENCY = ['Once', 'Weekly', 'Fortnightly', 'Monthly', 'Annually'].freeze

  validate_reference_field(:repayment_calculation_frequency)
  validate_reference_field(:recurrence_frequency)
end
