# frozen_string_literal: true

RSpec.describe Product, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
  end

  describe 'associations' do
    it { should have_one(:combination).dependent(:destroy) }
  end

  describe 'accept_nested_attributes_for' do
    it { should accept_nested_attributes_for(:combination) }
  end
end
