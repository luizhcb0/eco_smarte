class StaticController < ApplicationController
  
  def index
    @images = ["eco_0.jpg", "eco_1.jpg", "eco_2.jpg", "eco_3.jpg", "eco_4.jpg", "eco_5.jpg"]
    @describe_text = Text.find_by(id: 1)
  end
  
  def faq

  end
  
  def pool_spa_help

  end
  
  def tutorial
    @tutorial = params[:tutorial]
  end
  
  def pool_tutorial
    
  end
  def spa_tutorial
    
  end
  def commercial_tutorial
    
  end
end
