# frozen_string_literal: true

RSpec.describe Size, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'Associations' do
    it { should have_many(:combinations) }
  end
end
