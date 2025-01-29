# frozen_string_literal: true

class HumansController < ApplicationController
  before_action :set_human, only: %i[show update destroy]

  # GET /humans
  # GET /humans.json
  def index
    @humans = Human.all
  end

  # GET /humans/1
  # GET /humans/1.json
  def show; end

  # POST /humans
  # POST /humans.json
  def create
    @human = Human.new(human_params)

    if @human.save
      render :show, status: :created, location: @human
    else
      render json: @human.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /humans/1
  # PATCH/PUT /humans/1.json
  def update
    if @human.update(human_params)
      render :show, status: :ok, location: @human
    else
      render json: @human.errors, status: :unprocessable_entity
    end
  end

  # DELETE /humans/1
  # DELETE /humans/1.json
  def destroy
    @human.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_human
    @human = Human.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def human_params
    params.expect(human: [:name])
  end
end
