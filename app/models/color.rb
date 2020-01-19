# frozen_string_literal: true

class Color < ApplicationRecord

  has_many :products

  validates :name, presence: true
end
