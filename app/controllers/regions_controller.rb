class RegionsController < ApplicationController
    def index
        regions = Region.all
        render json: regions
    end

    def create
        region = Region.create(region_params)
        render json: region
    end

    def show
        region = Region.find(params[:id])
        render json: region
    end

    private

    def region_params
        params.permit(:name, :latMin, :latMax, :longMin, :longMax, :centerLat, :centerLong)
    end
end
