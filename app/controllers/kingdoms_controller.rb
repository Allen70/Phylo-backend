class KingdomsController < ApplicationController

    def index 
        @kingdoms = Kingdom.all 

        render json: @kingdoms, include: :taxon
    end

    def show 
        @kingdom = Kingdom.find(params[:id])

        render json: @kingdom, include: :taxon
    end

end
