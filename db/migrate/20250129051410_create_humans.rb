# frozen_string_literal: true

class CreateHumans < ActiveRecord::Migration[8.0]
  def change
    create_table :humans do |t|
      t.string :name
      t.references :humanable, polymorphic: true, null: false
      t.timestamps
    end
  end
end
