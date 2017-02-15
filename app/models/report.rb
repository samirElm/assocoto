class Report < ApplicationRecord
  belongs_to :mission

  validates :mission, presence: true
  validates :date,    presence: true
  validates :title,   presence: true
end
