# frozen_string_literal: true

RSpec.describe Combination, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:amount) }
  end

  describe 'Associations' do
    it { should belong_to(:product) }
    it { should belong_to(:color) }
    it { should belong_to(:size) }
  end
end
