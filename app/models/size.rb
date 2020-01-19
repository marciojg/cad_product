# frozen_string_literal: true

class Size < ApplicationRecord
  has_many :combinations

  validates :name, presence: true
end
