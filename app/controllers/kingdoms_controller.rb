class KingdomsController < ApplicationController
  before_action :set_kingdom, only: [:show, :update, :destroy]

  # GET /kingdoms
  def index
    @kingdoms = Kingdom.all

    render json: @kingdoms, include: [:taxons]
  end

  # GET /kingdoms/1
  def show
    render json: @kingdom
  end

  # POST /kingdoms
  def create
    @kingdom = Kingdom.new(kingdom_params)

    if @kingdom.save
      render json: @kingdom, status: :created, location: @kingdom
    else
      render json: @kingdom.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kingdoms/1
  def update
    if @kingdom.update(kingdom_params)
      render json: @kingdom
    else
      render json: @kingdom.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kingdoms/1
  def destroy
    @kingdom.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kingdom
      @kingdom = Kingdom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kingdom_params
      params.require(:kingdom).permit(:name, :taxons_id)
    end
end
