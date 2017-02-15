class Mission < ApplicationRecord
  belongs_to :project

  has_many :missions_users
  has_many :reports
end
