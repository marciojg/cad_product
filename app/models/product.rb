# frozen_string_literal: true

class Product < ApplicationRecord
  has_one :combination

  accepts_nested_attributes_for :combination

  validates :name, presence: true
  validates :description, presence: true
end
