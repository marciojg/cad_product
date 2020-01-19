# frozen_string_literal: true

class CreateCombinations < ActiveRecord::Migration[6.0]
  def change
    create_table :combinations do |t|
      t.belongs_to :product, null: false, foreign_key: true, index: true
      t.belongs_to :color, null: false, foreign_key: true, index: true
      t.belongs_to :size, null: false, foreign_key: true, index: true
      t.integer :amount
      t.timestamps
    end
  end
end
