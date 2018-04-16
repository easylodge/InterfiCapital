class InterfiCapital::Dto::OffsetAssociation < InterfiCapital::Dto::Base

  attr_accessor :account_to_offset_id, :allocation

  def allocation=(value)
    if value.to_f.between?(0.0, 100.0)
      @allocation = value
    else
      raise InterfiCapital::Dto::ValidationError.new("The allocation must be between 0.0 and 100.0")
    end
  end
end
