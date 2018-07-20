# class SampleModel
#   attr_accessor :name, :age
# end
  
  def quiz(user_value)
     if user_value<50
          return "low"
    elsif user_value == 55
        return "average"
    elsif user_value == 100
        return "perfect"
    elsif user_value >55
        return "high"
    end
end 