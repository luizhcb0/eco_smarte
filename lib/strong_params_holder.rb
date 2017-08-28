# This module has the purpose of holdng the models strong parameters so that
# different controllers can use it in order for not having multiple places to
# change when some model be modified

module StrongParamsHolder
  def user_params
    params.require(:user).permit(:name, :email, :phone, :city, :address, :postal_code, :user_type, :password, :password_confirmation)
  end
  
  def sign_up_params
    params.require(:user).permit(:name, :email, :user_type, :password, :password_confirmation)
  end
  
  def contact_params
    params.require(:contact).permit(:name, :email, :website, :subject, :content)
  end
end
