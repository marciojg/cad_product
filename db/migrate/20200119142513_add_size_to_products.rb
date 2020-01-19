# frozen_string_literal: true

class AddSizeToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :size, null: false, foreign_key: true, index: true
  end
end
