module Api
  module V1
    class LogVolunteersController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_log_volunteer, only: [:show, :update, :destroy]
    
      # GET /log_volunteers
      def index
        @log_volunteers = LogVolunteer.all
    
        render json: @log_volunteers
      end
    
      # GET /log_volunteers/1
      def show
        render json: @log_volunteer
      end
    
      # POST /log_volunteers
      def create
        @log_volunteer = LogVolunteer.new(log_volunteer_params)
    
        if @log_volunteer.save
          render json: @log_volunteer, status: :created, location: @log_volunteer
        else
          render json: @log_volunteer.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /log_volunteers/1
      def update
        if @log_volunteer.update(log_volunteer_params)
          render json: @log_volunteer
        else
          render json: @log_volunteer.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /log_volunteers/1
      def destroy
        @log_volunteer.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_log_volunteer
          @log_volunteer = LogVolunteer.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def log_volunteer_params
          params.require(:log_volunteer).permit(:log_id, :volunteer_id, :active, :covering)
        end
    end
  end
end