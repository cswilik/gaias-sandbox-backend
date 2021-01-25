class RegionsController < ApplicationController
    def index
        regions = Region.all
        render json: regions
    end

    def create
        region = Region.create(region_params)
        render json: region
    end

    def region_params
        params.permit(:name)
    end
end
