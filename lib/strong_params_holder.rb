# This module has the purpose of holdng the models strong parameters so that
# different controllers can use it in order for not having multiple places to
# change when some model be modified

module StrongParamsHolder
  def user_params
    params.require(:user).permit(:name, :email, :phone, :city, :address, :postal_code, :user_type, 
    :password, :password_confirmation)
  end
  
  def water_params
    params.require(:water).permit(:pool_id, :measurement_date, :temperature, :temperature_unit, :ph, 
    :cuppm, :calcium, :phosphate, :free_chlorine, :total_chlorine, :oxygen)
  end
  
  def pool_params
    params.require(:pool).permit(:user_id, :pool_model_id, :name, :city, :address, :postal_code, :state, :volume, :volume_unit,
    :pump_size, :filter_type, :filter_size, :filter_size_unit, :vacuum_brand, :negative_edge, :attached_spa, :additional_water_features)
  end
  
  def sign_up_params
    params.require(:user).permit(:name, :email, :user_type, :password, :password_confirmation)
  end
  
  def contact_params
    params.require(:contact).permit(:name, :email, :website, :subject, :content)
  end
  
  def warranty_params
    params.require(:warranty).permit(:first_name, :last_name, :street_address, :street_address_2, :city, :state, 
    :postal_code, :country, :phone, :email, :model, :other, :serial, :date_purchased, :dealership)
  end
end