# frozen_string_literal: true

class Size < ApplicationRecord
  validates :name, presence: true
end
