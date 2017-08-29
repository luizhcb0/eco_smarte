class UsersController < ApplicationController
  include StrongParamsHolder

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @pools = Pool.get_user_pools(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path(@user.id)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
  
  def password_edit
    @user = User.find(params[:id])
    render :password_edit
  end
  
  def password_update
    @user = User.find(params[:id])
    if @user == current_user
      if @user.update_attributes(user_params)
        bypass_sign_in(@user)
        redirect_to users_path
      else
        redirect_to password_edit_path
      end
    else
      if @user.update_attributes(user_params)
        redirect_to users_path
      else
        redirect_to password_edit_path
      end
    end
  end
  
  def user_profile
    @user = User.find(current_user.id)
    render :show
  end
  
  def user_profile_edit
    @user = User.find(current_user.id)
    render :edit
  end
  
  def user_profile_update
    @user = User.find(current_user.id)
    if @user.update_attributes(user_params)
      bypass_sign_in(@user)
      redirect_to user_profile_path
    else
      redirect_to user_profile_edit_path
    end
  end
  
  def user_password_edit
    @user = User.find(current_user.id)
    render :user_password_edit
  end
  
  def user_password_update
    @user = User.find(current_user.id)
    if @user.update_attributes(user_params)
      bypass_sign_in(@user)
      redirect_to user_profile_path
    else
      redirect_to user_password_edit_path
    end
  end

end
