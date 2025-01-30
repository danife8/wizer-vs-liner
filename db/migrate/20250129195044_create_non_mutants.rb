# frozen_string_literal: true

class CreateNonMutants < ActiveRecord::Migration[8.0]
  def change
    create_table :non_mutants do |t|
      t.references :non_mutantable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
