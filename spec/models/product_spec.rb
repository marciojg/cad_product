# frozen_string_literal: true

RSpec.describe Product, type: :model do
  it "has a valid product" do
    expect(build(:product)).to be_valid
  end
end
