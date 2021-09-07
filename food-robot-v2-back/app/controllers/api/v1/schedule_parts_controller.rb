module Api
  module V1
    class SchedulePartsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_schedule_part, only: [:show, :update, :destroy]
    
      # GET /schedule_parts
      def index
        @schedule_parts = SchedulePart.all
    
        render json: @schedule_parts
      end
    
      # GET /schedule_parts/1
      def show
        render json: @schedule_part
      end
    
      # POST /schedule_parts
      def create
        @schedule_part = SchedulePart.new(schedule_part_params)
    
        if @schedule_part.save
          render json: @schedule_part, status: :created, location: @schedule_part
        else
          render json: @schedule_part.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /schedule_parts/1
      def update
        if @schedule_part.update(schedule_part_params)
          render json: @schedule_part
        else
          render json: @schedule_part.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /schedule_parts/1
      def destroy
        @schedule_part.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_schedule_part
          @schedule_part = SchedulePart.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def schedule_part_params
          params.require(:schedule_part).permit(:schedule_id, :food_type_id, :required)
        end
    end
  end
end