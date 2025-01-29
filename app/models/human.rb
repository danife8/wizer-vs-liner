# frozen_string_literal: true

# == Schema Information
#
# Table name: humans
#
#  created_at     :datetime         not null
#  humanable_id   :integer          not null
#  humanable_type :string           not null
#  id             :integer          not null, primary key
#  name           :string
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_humans_on_humanable  (humanable_type,humanable_id)
#

class Human < ApplicationRecord
  ## ASSOCIATIONS
  belongs_to :humanable, polymorphic: true
  has_one :dna, dependent: :destroy
end
