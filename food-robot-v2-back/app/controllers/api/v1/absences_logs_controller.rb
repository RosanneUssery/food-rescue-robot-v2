module Api
  module V1
    class AbsencesLogsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_absences_log, only: [:show, :update, :destroy]
    
      # GET /absences_logs
      def index
        @absences_logs = AbsencesLog.all
    
        render json: @absences_logs
      end
    
      # GET /absences_logs/1
      def show
        render json: @absences_log
      end
    
      # POST /absences_logs
      def create
        @absences_log = AbsencesLog.new(absences_log_params)
    
        if @absences_log.save
          render json: @absences_log, status: :created, location: @absences_log
        else
          render json: @absences_log.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /absences_logs/1
      def update
        if @absences_log.update(absences_log_params)
          render json: @absences_log
        else
          render json: @absences_log.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /absences_logs/1
      def destroy
        @absences_log.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_absences_log
          @absences_log = AbsencesLog.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def absences_log_params
          params.require(:absences_log).permit(:absence_id, :log_id)
        end
    end
  end
end