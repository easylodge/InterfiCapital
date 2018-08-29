# NOTE This is identified as OrignationBaseDTO in the documentation
class InterfiCapital::Dto::Base #< OpenStruct

  attr_accessor :object_id, :user_id, :code, :comment, :is_new

  def initialize(args={})
    super()
    if args.is_a?(Hash)
      @object_id = args[:object_id] || nil
      @user_id = args[:user_id] || nil
      @code = args[:code] || nil
      @is_new = args[:code] || true
      @comment = args[:comment] || nil
    end
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

  # NOTE: we use this to save some work no repetitive field validations that take lists of terms as input.
  # This expects a field called `some_example` to validates against a constant in the same class called `SOME_EXAMPLE`
  def self.validate_reference_field(field)
    values = ['not defined']
    eval("values = #{self.name}::#{field.upcase}")
    define_method("#{field}=") do |value|
      unless values.include?(value)
        raise InterfiCapital::Dto::ValidationError.new("The field (#{field}) must be one of #{values.join(', ')}")
      else
        eval("@#{field} = value")
      end
    end
  end


  private

  def camel_case(str)
    return str if str !~ /_/ && str =~ /[A-Z]+.*/
    str.tr('@','').split('_').map{|e| e.capitalize}.join
  end

end
