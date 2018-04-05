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
    self.to_hash.to_json
  end

  def to_hash
    hash = {}
    self.instance_variables.each do |var|
      value = self.instance_variable_get var
      if value.class.ancestors.include?(InterfiCapital::Dto::Base)
        value.to_hash
      elsif value.is_a?(Array)
        converted = value.collect{|el|
          if el.class.ancestors.include?(InterfiCapital::Dto::Base)
            el.to_hash
          else
            el
          end
        }
        hash[camel_case(var.to_s)] = converted
      else
        hash[camel_case(var.to_s)] = value
      end
    end
    return hash
  end

  private

  def camel_case(str)
    return str if str !~ /_/ && str =~ /[A-Z]+.*/
    str.tr('@','').split('_').map{|e| e.capitalize}.join
  end

end
