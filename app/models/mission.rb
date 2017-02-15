class Mission < ApplicationRecord
  belongs_to :project

  has_one :department, through: :project

  has_many :reports
  has_many :milestones
  has_many :missions_users

  validates :project,  presence: true
  validates :title,    presence: true
  validates :deadline, presence: true
end
