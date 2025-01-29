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
  belongs_to :humanable, polymorphic: true
end
