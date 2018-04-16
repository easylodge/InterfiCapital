class InterfiCapital::Dto::ScheduleRepayment < InterfiCapital::Dto::Base

  attr_accessor :date, :payment_number, :net_payment
  attr_accessor :principal, :interest, :tax
  attr_accessor :principal_balance, :is_balloon
end
