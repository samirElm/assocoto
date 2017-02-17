class MissionsUser < ApplicationRecord
  belongs_to :mission
  belongs_to :user

  # accepts_nested_attributes_for :user, :reject_if => :all_blank

  validates :mission, presence: true
  validates :user,    presence: true
end
