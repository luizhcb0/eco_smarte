class WatersController < ApplicationController
  include StrongParamsHolder

  def index
    @waters = Water.all
  end

  def show
    @water = Water.find(params[:id])
  end

  def new
    @water = Water.new()
  end

  def create
    @water = Water.new(water_params)
    if @water.save
      redirect_to user_water_measurements_path
    else
      render :new
    end
  end

  def edit
    @water = Water.find(params[:id])
  end

  def update
    @water = Water.find(params[:id])
    if @water.update_attributes(water_params)
      if current_user.user_type == "admin"
        redirect_to waters_path
      else
        redirect_to user_water_measurements_path
      end
    else
      render :edit
    end
  end

  def destroy
    @water = Water.find(params[:id])
    @water.destroy
    if current_user.user_type == "admin"
      redirect_to waters_path
    else
      redirect_to user_water_measurements_path
    end
  end
  
  def new_water_measurement
    @pool_id = params[:pool_id]
    @water = Water.new()
    render :new
  end
  
  def user_water_measurements
    @pools = Pool.get_user_pools(current_user.id)
    @waters = Water.all
    render :index
  end
  
  def pool_water_measurements
    @pool_id = params[:pool_id]
    @waters = Water.get_all_pool_measurements(@pool_id)
    respond_to do |format|
      format.js {render layout: false} # Add this line to you respond_to block
    end
  end
end
