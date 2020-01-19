# frozen_string_literal: true

RSpec.describe Product, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:amount) }
  end

  describe 'associations' do
    it { should belong_to(:color) }
    it { should belong_to(:size) }
  end
end
