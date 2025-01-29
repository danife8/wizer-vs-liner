# frozen_string_literal: true

json.extract! mutant, :id, :mutantable_id, :mutantable_type, :created_at, :updated_at
json.url mutant_url(mutant, format: :json)
