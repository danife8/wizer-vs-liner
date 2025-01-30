# frozen_string_literal: true

module API
  module V1
    module ResponseType
      extend ActiveSupport::Concern

      def render_json_error(keyword, resource = nil)
        message = resource.nil? ? nil : resource.errors&.full_messages&.first
        render partial: 'api/v1/shared/status', locals: { keyword:, message: }
      end
    end
  end
end
