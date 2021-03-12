class TaxonsController < ApplicationController
  before_action :set_taxon, only: [:show, :update, :destroy]

  def index
    @taxons = Taxon.all

    render json: @taxons
  end

  def show
    render json: @taxon
  end

  def create
    @taxon = Taxon.new(taxon_params)

    if @taxon.save
      render json: @taxon, status: :created, location: @taxon
    else
      render json: @taxon.errors, status: :unprocessable_entity
    end
  end

  def update
    if @taxon.update(taxon_params)
      render json: @taxon
    else
      render json: @taxon.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @taxon.destroy
  end

  private
    def set_taxon
      @taxon = Taxon.find(params[:id])
    end

    def taxon_params
      params.require(:taxon).permit(:name)
    end
end
