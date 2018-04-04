# NOTE This is identified as OrignationBaseDTO in the documentation
class InterfiCapital::Dto::Base #< OpenStruct

  attr_accessor :object_id, :user_id, :code, :comment

  def initialize(args={})
    super()
    if args.is_a?(Hash)
      @object_id = args[:object_id] || nil
      @user_id = args[:user_id] || nil
      @code = args[:code] || nil
      @comment = args[:comment] || nil
    end
  end

  def to_json
    # we might need to do some special magic to get the correct json structure
    super
  end
end
