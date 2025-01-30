# frozen_string_literal: true

module API
  module V1
    class MutantsController < BaseController
      before_action :set_mutant, only: %i[show]

      # GET api/v1/mutants
      # GET api/v1/mutants.json
      def index
        @mutants = Human.mutants.all
      end

      # GET api/v1/mutants/1
      # GET api/v1/mutants/1.json
      def show; end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_mutant
        @mutant = Human.mutants.find(params.expect(:id))
      end
    end
  end
end
