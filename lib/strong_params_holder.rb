# This module has the purpose of holdng the models strong parameters so that
# different controllers can use it in order for not having multiple places to
# change when some model be modified

module StrongParamsHolder
  def sign_up_params
    params.require(:user).permit(:name, :city, :address, :phone, :email, :cstm_type, :password, :password_confirmation)
  end
  
  def contact_params
    params.require(:contact).permit(:name, :email, :website, :subject, :content)
  end
end
