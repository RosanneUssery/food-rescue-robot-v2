module Api
  module V1
    class SchedulesController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_schedule, only: [:show, :update, :destroy]
    
      # GET /schedules
      def index
        @schedules = Schedule.all
    
        render json: @schedules
      end
    
      # GET /schedules/1
      def show
        render json: @schedule
      end
    
      # POST /schedules
      def create
        @schedule = Schedule.new(schedule_params)
    
        if @schedule.save
          render json: @schedule, status: :created, location: @schedule
        else
          render json: @schedule.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /schedules/1
      def update
        if @schedule.update(schedule_params)
          render json: @schedule
        else
          render json: @schedule.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /schedules/1
      def destroy
        @schedule.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_schedule
          @schedule = Schedule.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def schedule_params
          params.require(:schedule).permit(:schedule_chain_id, :location_id, :position)
        end
    end
  end
end