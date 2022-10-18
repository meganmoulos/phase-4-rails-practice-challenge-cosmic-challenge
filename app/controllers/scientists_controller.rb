class ScientistsController < ApplicationController

    before_action :find_scientist, except: [:index, :create]

    def index
        render json: Scientist.all
    end

    def show
        render json: @scientist.planets
    end

    def create 
        scientist = Scientist.create!(scientist_params)
        render json: scientist, status: :created
    end

    def update
        @scientist.update!(scientist_params)
        render json: @scientist, status: :accepted
    end

    def destroy
        @scientist.destroy
        head :no_content
    end

    private

    def find_scientist
        @scientist = Scientist.find(params[:id])
    end

    def scientist_params
        params.permit(:name, :field_of_study, :avatar)
    end
end