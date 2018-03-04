class User < ApplicationRecord
  validates :email, presence: true
  validates :encrypted_password, presence: true

  has_many :expenses
  has_one :income

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
