class InterfiCapital::Dto::Base < OpenStruct

  def initialize(args)
    # this should be implemented in derived classes
    super
  end

  def to_json
    # we might need to do some special magic to get the correct json structure
    super
  end
end
