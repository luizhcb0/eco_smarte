class WarrantyController < ApplicationController
  include StrongParamsHolder

  def index
    @warranty_mail = WarrantyMail.new
    @warranty = Warranty.new
  end

  def create
    @warranty_mail = WarrantyMail.new(warranty_params)
    @warranty = Warranty.new(warranty_params)
    @warranty_mail.request = request
    if @warranty_mail.deliver && @warranty.save
      flash[:success] = "Thank you for submitting your warranty to ECOsmarte!"
      redirect_to root_path
    else
      flash[:error] = "We are unable to submit your warranty. Please check all fields."
      render :index
    end
  end
end

