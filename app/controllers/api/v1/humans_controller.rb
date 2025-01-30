# frozen_string_literal: true

module API
  module V1
    class HumansController < BaseController
      before_action :set_human, only: %i[show update destroy]

      # GET api/v1/humans
      # GET api/v1/humans.json
      def index
        @humans = Human.all
      end

      # GET api/v1/humans/1
      # GET api/v1/humans/1.json
      def show; end

      # POST api/v1/humans
      # POST api/v1/humans.json
      def create
        Human.transaction do
          human = Human.new(human_params)
          human.build_dna(dna_params)

          raise ActiveRecord::Rollback unless human.save

          render :show
        end
        render_json_error(:unprocessable_entity, human) unless human.persisted?
      end

      # PATCH/PUT api/v1/humans/1
      # PATCH/PUT api/v1/humans/1.json
      def update
        Human.transaction do
          @human.assign_attributes(human_params)
          @human.dna.assign_attributes(dna_params)

          raise ActiveRecord::Rollback unless @human.save

          render :show
        end
        render_json_error(:unprocessable_entity, @human) unless @human.errors.empty?
      end

      # DELETE api/v1/humans/1
      # DELETE api/v1/humans/1.json
      def destroy
        render :index if @human.destroy!
      end

      private

      def set_human
        @human = Human.find(params.expect(:id))
      end

      def human_params
        params.require(:human).permit(:name)
      end

      def dna_params
        params.require(:human).expect(dna: [row_0: [], row_1: [], row_2: [], row_3: [], row_4: [], row_5: []])
      end
    end
  end
end
