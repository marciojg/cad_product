# frozen_string_literal: true

class AddColorToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :color, null: false, foreign_key: true, index: true
  end
end
