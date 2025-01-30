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

  ## VALIDATIONS
  validates :row_0, :row_1, :row_2, :row_3, :row_4, :row_5, presence: true
  validates :row_0, :row_1, :row_2, :row_3, :row_4, :row_5, length: { is: 6 }

  ## CALLBACKS
  before_validation :sanitize_dna_structure
  after_save :is_mutant?

  ## INSTANCE METHODS
  def sequence
    [row_0, row_1, row_2, row_3, row_4, row_5]
  end

  def sanitize_dna_structure
    (0..5).each do |i|
      self["row_#{i}"].delete_if { |value| %w[a c g t A C G T].exclude?(value) }
      self["row_#{i}"].map(&:upcase)
      errors.add("row_#{i}", 'must contain only A, C, G, T characters') if self["row_#{i}"].length != 6
    end
  end
end
