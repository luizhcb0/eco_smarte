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
      redirect_to waters_path
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
      redirect_to waters_path(@water.id)
    else
      render :edit
    end
  end

  def destroy
    @water = Water.find(params[:id])
    @water.destroy
    redirect_to waters_path
  end
end
