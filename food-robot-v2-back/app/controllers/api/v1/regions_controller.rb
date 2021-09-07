module Api
  module V1
    class RegionsController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_region, only: [:show, :update, :destroy]
    
      # GET /regions
      def index
        @regions = Region.all
    
        render json: @regions
      end
    
      # GET /regions/1
      def show
        render json: @region
      end
    
      # POST /regions
      def create
        @region = Region.new(region_params)
    
        if @region.save
          render json: @region, status: :created, location: @region
        else
          render json: @region.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /regions/1
      def update
        if @region.update(region_params)
          render json: @region
        else
          render json: @region.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /regions/1
      def destroy
        @region.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_region
          @region = Region.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def region_params
          params.require(:region).permit(:lat, :lng, :name, :website, :address, :notes, :handbook_url, :prior_lbs_rescued, :prior_num_pickups, :twitter_key, :twitter_secret, :twitter_token, :twitter_token_secret, :twitter_last_poundage, :twitter_last_timestamp, :title, :tagline, :logo_file_name, :logo_content_type, :logo_file_size, :logo_updated_at, :phone, :tax_id, :welcome_email_text, :splash_html, :weight_unit, :time_zone, :volunteer_coordinator_email, :post_pickup_emails, :unschedule_self)
        end
    end
  end
end