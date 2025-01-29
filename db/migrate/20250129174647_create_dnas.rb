# frozen_string_literal: true

class CreateDnas < ActiveRecord::Migration[8.0]
  def change
    create_table :dnas do |t|
      t.string :row_0, array: true, limit: 6
      t.string :row_1, array: true, limit: 6
      t.string :row_2, array: true, limit: 6
      t.string :row_3, array: true, limit: 6
      t.string :row_4, array: true, limit: 6
      t.string :row_5, array: true, limit: 6
      t.references :human, null: false, foreign_key: true

      t.timestamps
    end
  end
end
