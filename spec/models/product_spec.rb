# frozen_string_literal: true

RSpec.describe Product, type: :model do
  it "tem um produto válido" do
    expect(build(:product)).to be_valid
  end
end
