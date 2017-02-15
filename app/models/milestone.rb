class Milestone < ApplicationRecord
  belongs_to :mission

  validates :mission, presence: true
  validates :title,   presence: true
  validates :date,    presence: true
end
