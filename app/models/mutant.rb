# frozen_string_literal: true

# == Schema Information
#
# Table name: mutants
#
#  created_at      :datetime         not null
#  id              :integer          not null, primary key
#  mutantable_id   :integer          not null
#  mutantable_type :string           not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_mutants_on_mutantable  (mutantable_type,mutantable_id)
#

class Mutant < ApplicationRecord
  ## ASSOCIATIONS
  belongs_to :mutantable, polymorphic: true
end
