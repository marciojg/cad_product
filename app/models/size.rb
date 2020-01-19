# frozen_string_literal: true

class Size < ApplicationRecord

  has_many :products

  validates :name, presence: true
end
