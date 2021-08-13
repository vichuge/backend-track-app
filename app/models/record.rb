class Record < ApplicationRecord
  belongs_to :list
  validates :times, presence: true, length: { minimum: 1 }
end
