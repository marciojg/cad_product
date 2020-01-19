# frozen_string_literal: true

RSpec.describe Size, type: :model do
  it "has a valid size" do
    expect(build(:size)).to be_valid
  end
end
