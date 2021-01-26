class WeathersController < ApplicationController

    def index
        weathers = Weather.all
        render json: weathers
    end

    def show 
        weather = Weather.find(params[:id])
        render json: weather
    end 

    def update 
        weather= Weather.find(params[:id])
        weather.update(weather_params)
        render json: weather
    end 


    def create
        weather = Weather.create(weather_params)
        render json: weather
    end

    private 
    def weather_params
        params.permit(:user_id, :region_id, :description, :temp, :wind, :rain, :cloud)
    end


end
