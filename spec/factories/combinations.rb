# frozen_string_literal: true

FactoryBot.define do
  factory :combination do
    color
    size
    amount { 1 }
    product
  end
end
