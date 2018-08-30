class InterfiCapital::Result

  attr_accessor :response

  def initialize(args = {})
    @response = args
  end

  def success?
    !failure?
  end

  def failure?
    response['validationErrors'].any?
  end

  def errors
    response['validationErrors'].collect{|hash| "#{hash["Target"]} - #{hash["Message"]}"}
  end
end
