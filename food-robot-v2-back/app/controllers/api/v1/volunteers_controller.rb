module Api
  module V1
    class VolunteersController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_volunteer, only: [:show, :update, :destroy]
    
      # GET /volunteers
      def index
        @volunteers = Volunteer.all
    
        render json: @volunteers
      end
    
      # GET /volunteers/1
      def show
        render json: @volunteer
      end
    
      # POST /volunteers
      def create
        @volunteer = Volunteer.new(volunteer_params)
    
        if @volunteer.save
          render json: @volunteer, status: :created, location: @volunteer
        else
          render json: @volunteer.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /volunteers/1
      def update
        if @volunteer.update(volunteer_params)
          render json: @volunteer
        else
          render json: @volunteer.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /volunteers/1
      def destroy
        @volunteer.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_volunteer
          @volunteer = Volunteer.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def volunteer_params
          params.require(:volunteer).permit(:email, :name, :phone, :preferred_contact, :has_car, :admin_notes, :pickup_prefs, :is_disabled, :on_email_list, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :admin, :transport_type_id, :cell_carrier_id, :sms_too, :pre_reminders_too, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at, :get_sncs_email, :waiver_signed, :waiver_signed_at, :assigned, :requested_region_id, :authentication_token, :active)
        end
    end
  end
end