# == Schema Information
#
# Table name: dnas
#
#  created_at :datetime         not null
#  human_id   :integer          not null
#  id         :integer          not null, primary key
#  row_0      :string(6)        is an Array
#  row_1      :string(6)        is an Array
#  row_2      :string(6)        is an Array
#  row_3      :string(6)        is an Array
#  row_4      :string(6)        is an Array
#  row_5      :string(6)        is an Array
#  updated_at :datetime         not null
#
# Indexes
#
#  index_dnas_on_human_id  (human_id)
#

# frozen_string_literal: true

class Dna < ApplicationRecord
  ## ASSOCIATIONS
  belongs_to :human

  ## SERIALIZERS
  serialize :row_0, Array
  serialize :row_1, Array
  serialize :row_2, Array
  serialize :row_3, Array
  serialize :row_4, Array
  serialize :row_5, Array

  ## INSTANCE METHODS
  def sequence
    [row_0, row_1, row_2, row_3, row_4, row_5]
  end
end
