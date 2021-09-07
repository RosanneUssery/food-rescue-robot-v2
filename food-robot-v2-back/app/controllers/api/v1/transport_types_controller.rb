module Api
  module V1
    class TransportTypesController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_transport_type, only: [:show, :update, :destroy]
    
      # GET /transport_types
      def index
        @transport_types = TransportType.all
    
        render json: @transport_types
      end
    
      # GET /transport_types/1
      def show
        render json: @transport_type
      end
    
      # POST /transport_types
      def create
        @transport_type = TransportType.new(transport_type_params)
    
        if @transport_type.save
          render json: @transport_type, status: :created, location: @transport_type
        else
          render json: @transport_type.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /transport_types/1
      def update
        if @transport_type.update(transport_type_params)
          render json: @transport_type
        else
          render json: @transport_type.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /transport_types/1
      def destroy
        @transport_type.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_transport_type
          @transport_type = TransportType.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def transport_type_params
          params.require(:transport_type).permit(:name, :active)
        end
    end
  end
end