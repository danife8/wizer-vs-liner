# frozen_string_literal: true

json.partial! 'api/v1/shared/status', message: nil, keyword: nil
json.partial! 'api/v1/humans/human', human: @human
