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
end
