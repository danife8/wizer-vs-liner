# frozen_string_literal: true

# == Schema Information
#
# Table name: non_mutants
#
#  created_at          :datetime         not null
#  id                  :integer          not null, primary key
#  non_mutantable_id   :integer          not null
#  non_mutantable_type :string           not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_non_mutants_on_non_mutantable  (non_mutantable_type,non_mutantable_id)
#

class NonMutant < ApplicationRecord
  ## ASSOCIATIONS
  belongs_to :non_mutantable, polymorphic: true
end
