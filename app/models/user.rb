class User < ApplicationRecord
  has_one :saving_goal

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
