class SignupController < ApplicationController
  def create
    volunteer = Volunteer.new(user_params)
    if volunteer.save
      payload  = { volunteer_id: volunteer.id }
      session = JWTSessions::Session.new(payload: payload, refresh_by_access_allowed: true)
      tokens = session.login

      response.set_cookie(JWTSessions.access_cookie,
                          value: tokens[:access],
                          httponly: true,
                          secure: Rails.env.production?)
      render json: { csrf: tokens[:csrf] }
    else
      render json: { error: volunteer.errors.full_messages.join(' ') }, status: :unprocessable_entity
    end
  end

  private

  def volunteer_params
    params.require(:volunteer).permit(:email, :name, :phone, :preferred_contact, :has_car, :admin_notes, :pickup_prefs, :is_disabled, :on_email_list, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :admin, :transport_type_id, :cell_carrier_id, :sms_too, :pre_reminders_too, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at, :get_sncs_email, :waiver_signed, :waiver_signed_at, :assigned, :requested_region_id, :authentication_token, :active)
  end
  end
end
