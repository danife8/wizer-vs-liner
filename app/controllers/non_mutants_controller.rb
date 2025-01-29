# frozen_string_literal: true

class NonMutantsController < ApplicationController
  before_action :set_non_mutant, only: %i[show update destroy]

  # GET /non_mutants
  # GET /non_mutants.json
  def index
    @non_mutants = NonMutant.all
  end

  # GET /non_mutants/1
  # GET /non_mutants/1.json
  def show; end

  # POST /non_mutants
  # POST /non_mutants.json
  def create
    @non_mutant = NonMutant.new(non_mutant_params)

    if @non_mutant.save
      render :show, status: :created, location: @non_mutant
    else
      render json: @non_mutant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /non_mutants/1
  # PATCH/PUT /non_mutants/1.json
  def update
    if @non_mutant.update(non_mutant_params)
      render :show, status: :ok, location: @non_mutant
    else
      render json: @non_mutant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /non_mutants/1
  # DELETE /non_mutants/1.json
  def destroy
    @non_mutant.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_non_mutant
    @non_mutant = NonMutant.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def non_mutant_params
    params.expect(non_mutant: %i[non_mutantable_id non_mutantable_type])
  end
end
