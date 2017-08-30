module PoolsHelper
  
  def model_array
    model_array =  PoolModel.all.map { |model| [model.description, model.id] }
  end
  
  def user_array
    user_array =  User.all.map { |user| [user.name, user.id] }
  end
  
end

