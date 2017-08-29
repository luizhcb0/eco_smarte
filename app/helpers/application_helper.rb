module ApplicationHelper
  
  def user_type_array
    user_type_array =  [["Pool/Spa User", "user"], ["Pool Company", "company"], ["Commercial Pool", "commercial"], ["Whole House Water Costumer", "whole_house"], ["Factory Monitor", "factory"]]
  end
  
  def yes_no(x)
    x ? "Yes" : "No"
  end
  
end