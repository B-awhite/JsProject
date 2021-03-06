class Api::V1::BeachesController < ApplicationController
  before_action :set_beach, only: [:show, :update, :destroy]

  # GET /beaches
  def index
    @beaches = Beach.all

    render json: @beaches, except: [:created_at, :updated_at]
  end

  # GET /beaches/1
  # def show
  #   render json: @beach
  # end

  # # POST /beaches
  # def create
  #   @beach = Beach.new(beach_params)

  #   if @beach.save
  #     render json: @beach, status: :created, location: @beach
  #   else
  #     render json: @beach.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /beaches/1
  # def update
  #   if @beach.update(beach_params)
  #     render json: @beach
  #   else
  #     render json: @beach.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /beaches/1
  # def destroy
  #   @beach.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_beach
    @beach = Beach.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def beach_params
    params.require(:beach).permit(:name, :city)
  end

end
