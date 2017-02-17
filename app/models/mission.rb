class Mission < ApplicationRecord
  belongs_to :project

  has_one :department, through: :project

  has_many :reports
  has_many :milestones
  has_many :missions_users, inverse_of: :mission
  has_many :users, through: :missions_users

  # accepts_nested_attributes_for :users
  accepts_nested_attributes_for :missions_users, :allow_destroy => true

  validates :project,  presence: true
  validates :title,    presence: true
  validates :deadline, presence: true
end
