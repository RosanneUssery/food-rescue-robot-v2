module Api
  module V1
    class LocationsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_location, only: [:show, :update, :destroy]
    
      # GET /locations
      def index
        @locations = Location.all
    
        render json: @locations
      end
    
      # GET /locations/1
      def show
        render json: @location
      end
    
      # POST /locations
      def create
        @location = Location.new(location_params)
    
        if @location.save
          render json: @location, status: :created, location: @location
        else
          render json: @location.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /locations/1
      def update
        if @location.update(location_params)
          render json: @location
        else
          render json: @location.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /locations/1
      def destroy
        @location.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_location
          @location = Location.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def location_params
          params.require(:location).permit(:recip_category, :donor_type, :address, :name, :lat, :lng, :contact, :website, :admin_notes, :public_notes, :hours, :region_id, :twitter_handle, :receipt_key, :detailed_hours_json, :email, :phone, :equipment_storage_info, :food_storage_info, :entry_info, :exit_info, :onsite_contact_info, :active, :location_type)
        end
    end
  end
end
