require 'rails_helper'

RSpec.describe List, type: :model do
  # Association test
  it { should have_many(:records) }
  # Validation tests
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:icon) }
  it {
    should validate_length_of(:title)
     .is_at_least(3)
  }
end
