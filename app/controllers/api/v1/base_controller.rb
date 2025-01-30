# frozen_string_literal: true

module API
  module V1
    class BaseController < ActionController::API
      include API::V1::ResponseType
    end
  end
end
