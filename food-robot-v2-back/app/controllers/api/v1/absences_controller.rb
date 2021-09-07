module Api
  module V1
    class AbsencesController < ApplicationController
      before_action :authorize_access_request!, except: [:show, :index]
      before_action :set_absence, only: [:show, :update, :destroy]
    
      # GET /absences
      def index
        @absences = Absence.all
    
        render json: @absences
      end
    
      # GET /absences/1
      def show
        render json: @absence
      end
    
      # POST /absences
      def create
        @absence = Absence.new(absence_params)
    
        if @absence.save
          render json: @absence, status: :created, location: @absence
        else
          render json: @absence.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /absences/1
      def update
        if @absence.update(absence_params)
          render json: @absence
        else
          render json: @absence.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /absences/1
      def destroy
        @absence.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_absence
          @absence = Absence.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def absence_params
          params.require(:absence).permit(:volunteer_id, :start_date, :stop_date, :active, :comments, :generate, :scaffold, :AbsencesLog, :absence_id, :log, :generate, :scaffold, :Assignment, :volunteer_id, :region_id, :admin, :generate, :scaffold, :CellCarrier, :name, :format, :generate, :scaffold, :FoodType, :name, :region_id, :active, :generate, :scaffold, :Location, :recip_category, :donor_type, :address, :name, :lat, :lng, :contact, :website, :admin_notes, :public_notes, :hours, :region_id, :twitter_handle, :receipt_key, :detailed_hours_json, :email, :phone, :equipment_storage_info, :food_storage_info, :entry_info, :exit_info, :onsite_contact_info, :active, :location_type, :generate, :scaffold, :LogPart, :log_id, :food_type_id, :required, :weight, :count, :description, :generate, :scaffold, :LogRecipient, :log_id, :recipient, :generate, :scaffold, :LogVolunteer, :log_id, :volunteer_id, :active, :covering, :generate, :scaffold, :Log, :when, :notes, :num_reminders, :flag_for_admin, :donor_id, :transport_type_id, :region_id, :complete, :scale_type_id, :weight_unit, :schedule_chain_id, :num_volunteers, :why_zero, :hours_spent, :generate, :scaffold, :Region, :lat, :lng, :name, :website, :address, :notes, :handbook_url, :prior_lbs_rescued, :prior_num_pickups, :twitter_key, :twitter_secret, :twitter_token, :twitter_token_secret, :twitter_last_poundage, :twitter_last_timestamp, :title, :tagline, :logo_file_name, :logo_content_type, :logo_file_size, :logo_updated_at, :phone, :tax_id, :welcome_email_text, :splash_html, :weight_unit, :time_zone, :volunteer_coordinator_email, :post_pickup_emails, :unschedule_self, :generate, :scaffold, :ScaleType, :name, :weight_unit, :region_id, :active, :generate, :scaffold, :ScheduleChain, :detailed_start_time, :detailed_stop_time, :detailed_date, :transport_type_id, :backup, :temporary, :irregular, :difficulty_rating, :hilliness, :scale_type_id, :region_id, :frequency, :day_of_week, :expected_weight, :public_notes, :admin_notes, :num_volunteers, :active, :generate, :scaffold, :SchedulePart, :schedule_id, :food_type_id, :required, :generate, :scaffold, :ScheduleVolunteer, :volunteer_id, :active, :schedule_chain, :generate, :scaffold, :Schedule, :schedule_chain_id, :location_id, :position, :generate, :scaffold, :TransportType, :name, :active, :generate, :scaffold, :Volunteer, :email, :name, :phone, :preferred_contact, :has_car, :admin_notes, :pickup_prefs, :is_disabled, :on_email_list, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :admin, :transport_type_id, :cell_carrier_id, :sms_too, :pre_reminders_too, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at, :get_sncs_email, :waiver_signed, :waiver_signed_at, :assigned, :requested_region_id, :authentication_token, :active)
        end
    end
  end
end
