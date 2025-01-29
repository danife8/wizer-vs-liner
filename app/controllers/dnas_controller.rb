# frozen_string_literal: true

class DnasController < ApplicationController
  before_action :set_dna, only: %i[show update destroy]

  # GET /dnas
  # GET /dnas.json
  def index
    @dnas = Dna.all
  end

  # GET /dnas/1
  # GET /dnas/1.json
  def show; end

  # POST /dnas
  # POST /dnas.json
  def create
    @dna = Dna.new(dna_params)

    if @dna.save
      render :show, status: :created, location: @dna
    else
      render json: @dna.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dnas/1
  # PATCH/PUT /dnas/1.json
  def update
    if @dna.update(dna_params)
      render :show, status: :ok, location: @dna
    else
      render json: @dna.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dnas/1
  # DELETE /dnas/1.json
  def destroy
    @dna.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_dna
    @dna = Dna.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def dna_params
    params.require(:dna).expect(:row_0, :row_1, :row_2, :row_3, :row_4, :row_5, :human_id)
  end
end
