class InterfiCapital::Dto::ValidationError < RuntimeError; end


class InterfiCapital::ServerError < StandardError

  def initialize(response=nil)
    @response = response
  end

  attr_reader :response
end

