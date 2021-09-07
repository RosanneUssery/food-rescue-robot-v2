module Api
  module V1
    class FoodTypesController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_food_type, only: [:show, :update, :destroy]
    
      # GET /food_types
      def index
        @food_types = FoodType.all
    
        render json: @food_types
      end
    
      # GET /food_types/1
      def show
        render json: @food_type
      end
    
      # POST /food_types
      def create
        @food_type = FoodType.new(food_type_params)
    
        if @food_type.save
          render json: @food_type, status: :created, location: @food_type
        else
          render json: @food_type.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /food_types/1
      def update
        if @food_type.update(food_type_params)
          render json: @food_type
        else
          render json: @food_type.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /food_types/1
      def destroy
        @food_type.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_food_type
          @food_type = FoodType.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def food_type_params
          params.require(:food_type).permit(:name, :region_id, :active)
        end
    end
  end
end