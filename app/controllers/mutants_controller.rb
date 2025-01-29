# frozen_string_literal: true

class MutantsController < ApplicationController
  before_action :set_mutant, only: %i[show update destroy]

  # GET /mutants
  # GET /mutants.json
  def index
    @mutants = Mutant.all
  end

  # GET /mutants/1
  # GET /mutants/1.json
  def show; end

  # POST /mutants
  # POST /mutants.json
  def create
    @mutant = Mutant.new(mutant_params)

    if @mutant.save
      render :show, status: :created, location: @mutant
    else
      render json: @mutant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mutants/1
  # PATCH/PUT /mutants/1.json
  def update
    if @mutant.update(mutant_params)
      render :show, status: :ok, location: @mutant
    else
      render json: @mutant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mutants/1
  # DELETE /mutants/1.json
  def destroy
    @mutant.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_mutant
    @mutant = Mutant.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def mutant_params
    params.expect(mutant: %i[mutantable_id mutantable_type])
  end
end
