# frozen_string_literal: true

class Product < ApplicationRecord

  belongs_to :size
  belongs_to :color

  validates :name, presence: true
  validates :description, presence: true
  validates :amount, presence: true
end
