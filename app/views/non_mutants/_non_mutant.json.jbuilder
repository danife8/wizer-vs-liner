# frozen_string_literal: true

json.extract! non_mutant, :id, :non_mutantable_id, :non_mutantable_type, :created_at, :updated_at
json.url non_mutant_url(non_mutant, format: :json)
