module Api
  module V1
    class ScaleTypesController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_scale_type, only: [:show, :update, :destroy]
    
      # GET /scale_types
      def index
        @scale_types = ScaleType.all
    
        render json: @scale_types
      end
    
      # GET /scale_types/1
      def show
        render json: @scale_type
      end
    
      # POST /scale_types
      def create
        @scale_type = ScaleType.new(scale_type_params)
    
        if @scale_type.save
          render json: @scale_type, status: :created, location: @scale_type
        else
          render json: @scale_type.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /scale_types/1
      def update
        if @scale_type.update(scale_type_params)
          render json: @scale_type
        else
          render json: @scale_type.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /scale_types/1
      def destroy
        @scale_type.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_scale_type
          @scale_type = ScaleType.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def scale_type_params
          params.require(:scale_type).permit(:name, :weight_unit, :region_id, :active)
        end
    end
  end
end