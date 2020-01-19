# frozen_string_literal: true

class Color < ApplicationRecord
  has_many :combinations

  validates :name, presence: true
end
