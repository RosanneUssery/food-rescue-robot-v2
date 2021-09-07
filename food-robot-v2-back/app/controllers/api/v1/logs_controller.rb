module Api
  module V1
    class LogsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_log, only: [:show, :update, :destroy]
    
      # GET /logs
      def index
        @logs = Log.all
    
        render json: @logs
      end
    
      # GET /logs/1
      def show
        render json: @log
      end
    
      # POST /logs
      def create
        @log = Log.new(log_params)
    
        if @log.save
          render json: @log, status: :created, location: @log
        else
          render json: @log.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /logs/1
      def update
        if @log.update(log_params)
          render json: @log
        else
          render json: @log.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /logs/1
      def destroy
        @log.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_log
          @log = Log.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def log_params
          params.require(:log).permit(:when, :notes, :num_reminders, :flag_for_admin, :donor_id, :transport_type_id, :region_id, :complete, :scale_type_id, :weight_unit, :schedule_chain_id, :num_volunteers, :why_zero, :hours_spent)
        end
    end
  end
end