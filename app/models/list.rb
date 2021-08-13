class List < ApplicationRecord
  has_many :records
  validates :title, presence: true, length: { minimum: 3 }
  validates :icon, presence: true, length: { minimum: 3 }
end
