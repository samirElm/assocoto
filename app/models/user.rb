class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :missions_users, inverse_of: :user
  has_many :missions, through: :missions_users

  validates :first_name, presence: true
end
