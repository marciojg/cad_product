# frozen_string_literal: true

RSpec.describe Color, type: :model do
  it "has a valid color" do
    expect(build(:color)).to be_valid
  end
end
