require 'rails_helper'

RSpec.describe Record, type: :model do
  # Association test
  it { should belong_to(:list) }
  it { should belong_to(:user) }
  # Validation tests
  it { should validate_presence_of(:times) }
  it {
    should validate_length_of(:times)
      .is_at_least(1)
  }
end
