class PoolsController < ApplicationController
  include StrongParamsHolder

  def index
    @pools = Pool.all
  end

  def show
    @pool = Pool.find(params[:id])
  end

  def new
    @pool = Pool.new()
  end

  def create
    @pool = Pool.new(pool_params)
    if @pool.save
      if current_user.user_type == "admin"
        redirect_to pools_path
      else 
        redirect_to user_pools_path
      end
    else
      render :new
    end
  end

  def edit
    @pool = Pool.find(params[:id])
  end

  def update
    @pool = Pool.find(params[:id])
    if @pool.update_attributes(pool_params)
      if current_user.user_type == "admin"
        redirect_to pools_path
      else 
        redirect_to user_pools_path
      end
    else
      render :edit
    end
  end

  def destroy
    @pool = Pool.find(params[:id])
    @pool.destroy
    if current_user.user_type == "admin"
      redirect_to pools_path
    else 
      redirect_to user_pools_path
    end
  end
  
  def user_pools
    @pools = Pool.get_user_pools(current_user.id)
    render :index
  end
  
  def add_pool
    @pool = Pool.new
    render :new_pool
  end
  
  def admin_edit_pool
    @pool = Pool.find(params[:pool_id])
    render :new_pool
  end
end
