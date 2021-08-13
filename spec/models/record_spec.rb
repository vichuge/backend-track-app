require 'rails_helper'

RSpec.describe Record, type: :model do
  # Association test
  it { should belong_to(:list) }
  # Validation tests
 it { should validate_presence_of(:times) }
end
