# frozen_string_literal: true

# == Schema Information
#
# Table name: humans
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class Human < ApplicationRecord
  ## ASSOCIATIONS
  has_one :dna, dependent: :destroy
  has_one :mutant, as: :mutantable, dependent: :destroy
  has_one :non_mutant, as: :non_mutantable, dependent: :destroy

  ## SCOPES
  scope :mutants, -> { joins(:mutant) }
  scope :non_mutants, -> { joins(:non_mutant) }

  ## VALIDATIONS
  validates :dna, presence: true

  ## NESTED ATTRIBUTES
  accepts_nested_attributes_for :dna
end
