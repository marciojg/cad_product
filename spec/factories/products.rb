# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    name { "Camiseta" }
    description  { "Doe asdasda a sdas as dasd as a asda sasa" }

    after :create do |product|
      FactoryBot.create(:combination, product: product)
    end
  end
end
