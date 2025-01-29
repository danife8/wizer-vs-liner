# frozen_string_literal: true

json.extract! dna, :id, :row_0, :row_1, :row_2, :row_3, :row_4, :row_5, :human_id, :created_at, :updated_at
json.url dna_url(dna, format: :json)
