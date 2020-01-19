class Combination < ApplicationRecord
  belongs_to :product
  belongs_to :color
  belongs_to :size

  validates :amount, presence: true
end
