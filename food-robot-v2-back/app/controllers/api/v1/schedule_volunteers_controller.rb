module Api
  module V1
    class ScheduleVolunteersController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_schedule_volunteer, only: [:show, :update, :destroy]
    
      # GET /schedule_volunteers
      def index
        @schedule_volunteers = ScheduleVolunteer.all
    
        render json: @schedule_volunteers
      end
    
      # GET /schedule_volunteers/1
      def show
        render json: @schedule_volunteer
      end
    
      # POST /schedule_volunteers
      def create
        @schedule_volunteer = ScheduleVolunteer.new(schedule_volunteer_params)
    
        if @schedule_volunteer.save
          render json: @schedule_volunteer, status: :created, location: @schedule_volunteer
        else
          render json: @schedule_volunteer.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /schedule_volunteers/1
      def update
        if @schedule_volunteer.update(schedule_volunteer_params)
          render json: @schedule_volunteer
        else
          render json: @schedule_volunteer.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /schedule_volunteers/1
      def destroy
        @schedule_volunteer.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_schedule_volunteer
          @schedule_volunteer = ScheduleVolunteer.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def schedule_volunteer_params
          params.require(:schedule_volunteer).permit(:volunteer_id, :active, :schedule_chain_id)
        end
    end
  end
end