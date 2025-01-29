# frozen_string_literal: true

class RemoveHumanableColumnFromHuman < ActiveRecord::Migration[8.0]
  def change
    remove_reference :humans, :humanable, polymorphic: true
  end
end
