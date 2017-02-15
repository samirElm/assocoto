class Project < ApplicationRecord
  belongs_to :department
  has_many   :missions

  validates :name,       presence: true
  validates :department, presence: true
end
