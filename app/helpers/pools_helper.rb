module PoolsHelper
  
  def model_array
    model_array =  PoolModel.all.map { |model| [model.description, model.id] }
  end
  
end

