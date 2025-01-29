# frozen_string_literal: true

json.extract! human, :id, :name, :humanable_id, :humanable_type, :created_at, :updated_at
json.url human_url(human, format: :json)
