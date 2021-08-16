class Record < ApplicationRecord
  belongs_to :list
  belongs_to :user
  validates :times, presence: true, length: { minimum: 1 }
end
