# frozen_string_literal: true

class CreateMutants < ActiveRecord::Migration[8.0]
  def change
    create_table :mutants do |t|
      t.references :mutantable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
