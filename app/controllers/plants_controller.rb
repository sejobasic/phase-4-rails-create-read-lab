class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants
      end
    
      def show
        plants = Plant.find(params[:id])
        render json: plants
      end
    
      def create
        plants = Plant.create(plant_params)
        render json: plants, status: :created
      end
    
      def plant_params
        params.permit(:name, :price, :image)
      end
end
