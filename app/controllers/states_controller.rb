class StatesController < ApplicationController
    def index
        states = State.all
        render json: states
    end

    def create
        state = State.create(state_params)
        render json: state
    end

    def show
        state = State.find(params(:id))
        render json: state
    end

    private 

    def state_params
        params.permit(:name, :state_id)
    end
end
