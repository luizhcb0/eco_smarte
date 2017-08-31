module PoolsHelper
  
  def pool_model_array
    pool_model_array =  PoolModel.all.map { |model| [model.description, model.id] }
  end
  
  def user_array
    user_array =  User.all.map { |user| [user.name, user.id] }
  end
  
end

