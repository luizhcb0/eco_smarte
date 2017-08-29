class Pool < ApplicationRecord
  belongs_to :user
  belongs_to :pool_model
  has_many :waters
  
  enum filter_type: %w(sand glass de cartridge)
  enum pump_size: %w(1/2_horse_power 3/4_horse_power 1_horse_power 1_1/2_horse_power 2_horse_power variable_speed)
  enum volume_unit: %w(gallons litters)
  enum state: %w(alabama alaska arizona arkansas california colorado connecticut delaware florida georgia 
  hawaii idaho illinois indiana iowa kansas kentucky louisiana maine maryland massachusetts michigan minnesota 
  mississippi missouri montana nebraska nevada new_hampshire new_jersey new_mexico new_york north_carolina
  north_dakota ohio oklahoma oregon pennsylvania rhode_island south_carolina south_dakota tennessee texas utah
  vermont virginia washington west_virginia wisconsin wyoming)
  
  def self.get_user_pools(user_id)
    Pool.where(user_id: user_id)
  end
end
