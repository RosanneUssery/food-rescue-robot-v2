module Api
  module V1
    class CellCarriersController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_cell_carrier, only: [:show, :update, :destroy]
    
      # GET /cell_carriers
      def index
        @cell_carriers = CellCarrier.all
    
        render json: @cell_carriers
      end
    
      # GET /cell_carriers/1
      def show
        render json: @cell_carrier
      end
    
      # POST /cell_carriers
      def create
        @cell_carrier = CellCarrier.new(cell_carrier_params)
    
        if @cell_carrier.save
          render json: @cell_carrier, status: :created, location: @cell_carrier
        else
          render json: @cell_carrier.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /cell_carriers/1
      def update
        if @cell_carrier.update(cell_carrier_params)
          render json: @cell_carrier
        else
          render json: @cell_carrier.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /cell_carriers/1
      def destroy
        @cell_carrier.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_cell_carrier
          @cell_carrier = CellCarrier.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def cell_carrier_params
          params.require(:cell_carrier).permit(:name, :format)
        end
    end
  end
end