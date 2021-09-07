module Api
  module V1
    class LogRecipientsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_log_recipient, only: [:show, :update, :destroy]
    
      # GET /log_recipients
      def index
        @log_recipients = LogRecipient.all
    
        render json: @log_recipients
      end
    
      # GET /log_recipients/1
      def show
        render json: @log_recipient
      end
    
      # POST /log_recipients
      def create
        @log_recipient = LogRecipient.new(log_recipient_params)
    
        if @log_recipient.save
          render json: @log_recipient, status: :created, location: @log_recipient
        else
          render json: @log_recipient.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /log_recipients/1
      def update
        if @log_recipient.update(log_recipient_params)
          render json: @log_recipient
        else
          render json: @log_recipient.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /log_recipients/1
      def destroy
        @log_recipient.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_log_recipient
          @log_recipient = LogRecipient.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def log_recipient_params
          params.require(:log_recipient).permit(:log_id, :recipient_id)
        end
    end
  end
end