# frozen_string_literal: true

module API
  module V1
    class NonMutantsController < BaseController
      before_action :set_non_mutant, only: %i[show]

      # GET api/v1/non_mutants
      # GET api/v1/non_mutants.json
      def index
        @non_mutants = Human.non_mutants.all
      end

      # GET api/v1/non_mutants/1
      # GET api/v1/non_mutants/1.json
      def show; end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_non_mutant
        @non_mutant = Human.non_mutants.find(params.expect(:id))
      end
    end
  end
end
