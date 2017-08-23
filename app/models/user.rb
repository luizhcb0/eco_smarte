class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  enum user_type: %w(admin pool_spa_user company commercial whole_house_costumer factory)
  
  after_create_commit { self.username = self.email }
end
