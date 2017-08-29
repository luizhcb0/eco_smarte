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
      redirect_to pools_path
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
      redirect_to pools_path(@pool.id)
    else
      render :edit
    end
  end

  def destroy
    @pool = Pool.find(params[:id])
    @pool.destroy
    redirect_to pools_path
  end
end
