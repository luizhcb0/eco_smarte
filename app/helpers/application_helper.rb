module ApplicationHelper
  
  def user_type_array
    user_type_array =  [["Pool/Spa User", "user"], ["Pool Company", "company"], ["Commercial Pool", "commercial"], ["Whole House Water Costumer", "whole_house"], ["Factory Monitor", "factory"]] 
  end
  
  def yes_no(x)
    x ? "Yes" : "No"
  end
  
  def f_c(x)
    if x == "fahrenheit"
      return "F"
    elsif x == "celcius"
      return "C"
    else
      return ""
    end
  end
  
  def role(x)
    if x == "admin"
      return "Administrator"
    elsif x == "user"
      return "Pool/Spa User"
    elsif x == "company"
      return "Pool Company"
    elsif x == "commercial"
      return "Commercial Pool"
    elsif x == "whole_house"
      return "Whole House Water Costumer"
    elsif x == "factory"
      return "Factory Monitor"
    end
  end
  
end