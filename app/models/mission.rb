class Mission < ApplicationRecord
  belongs_to :project

  has_many :reports
  has_many :milestones
  has_many :missions_users
end
