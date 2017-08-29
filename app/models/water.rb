class Water < ApplicationRecord
  belongs_to :pool
  
  enum temperature_unit: %w(fahrenheit celcius)
  
  def self.get_all_measurements(pool_id)
    Water.where(pool_id: pool_id)
  end
end
