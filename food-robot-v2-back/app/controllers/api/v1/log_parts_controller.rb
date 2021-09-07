module Api
  module V1
    class LogPartsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_log_part, only: [:show, :update, :destroy]
    
      # GET /log_parts
      def index
        @log_parts = LogPart.all
    
        render json: @log_parts
      end
    
      # GET /log_parts/1
      def show
        render json: @log_part
      end
    
      # POST /log_parts
      def create
        @log_part = LogPart.new(log_part_params)
    
        if @log_part.save
          render json: @log_part, status: :created, location: @log_part
        else
          render json: @log_part.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /log_parts/1
      def update
        if @log_part.update(log_part_params)
          render json: @log_part
        else
          render json: @log_part.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /log_parts/1
      def destroy
        @log_part.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_log_part
          @log_part = LogPart.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def log_part_params
          params.require(:log_part).permit(:log_id, :food_type_id, :required, :weight, :count, :description)
        end
    end
  end
end