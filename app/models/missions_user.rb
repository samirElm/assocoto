class MissionsUser < ApplicationRecord
  belongs_to :mission
  belongs_to :user

  validates :mission, presence: true
  validates :user,    presence: true
end
