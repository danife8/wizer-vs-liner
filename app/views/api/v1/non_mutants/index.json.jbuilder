# frozen_string_literal: true

json.partial! 'api/v1/shared/status', message: nil, keyword: nil
json.non_mutants @non_mutants do |non_mutant|
  json.partial! 'api/v1/humans/human', human: non_mutant
end
