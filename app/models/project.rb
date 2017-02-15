class Project < ApplicationRecord
  belongs_to :department
  has_many   :missions
end
