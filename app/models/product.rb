# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :amount, presence: true
end
