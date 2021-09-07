module Api
  module V1
    class ScheduleChainsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_schedule_chain, only: [:show, :update, :destroy]
    
      # GET /schedule_chains
      def index
        @schedule_chains = ScheduleChain.all
    
        render json: @schedule_chains
      end
    
      # GET /schedule_chains/1
      def show
        render json: @schedule_chain
      end
    
      # POST /schedule_chains
      def create
        @schedule_chain = ScheduleChain.new(schedule_chain_params)
    
        if @schedule_chain.save
          render json: @schedule_chain, status: :created, location: @schedule_chain
        else
          render json: @schedule_chain.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /schedule_chains/1
      def update
        if @schedule_chain.update(schedule_chain_params)
          render json: @schedule_chain
        else
          render json: @schedule_chain.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /schedule_chains/1
      def destroy
        @schedule_chain.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_schedule_chain
          @schedule_chain = ScheduleChain.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def schedule_chain_params
          params.require(:schedule_chain).permit(:detailed_start_time, :detailed_stop_time, :detailed_date, :transport_type_id, :backup, :temporary, :irregular, :difficulty_rating, :hilliness, :scale_type_id, :region_id, :frequency, :day_of_week, :expected_weight, :public_notes, :admin_notes, :num_volunteers, :active)
        end
    end
  end
end