require "test_helper"

class VolunteersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @volunteer = volunteers(:one)
  end

  test "should get index" do
    get volunteers_url, as: :json
    assert_response :success
  end

  test "should create volunteer" do
    assert_difference('Volunteer.count') do
      post volunteers_url, params: { volunteer: { active: @volunteer.active, admin: @volunteer.admin, admin_notes: @volunteer.admin_notes, assigned: @volunteer.assigned, authentication_token: @volunteer.authentication_token, cell_carrier_id: @volunteer.cell_carrier_id, current_sign_in_at: @volunteer.current_sign_in_at, current_sign_in_ip: @volunteer.current_sign_in_ip, email: @volunteer.email, encrypted_password: @volunteer.encrypted_password, get_sncs_email: @volunteer.get_sncs_email, has_car: @volunteer.has_car, is_disabled: @volunteer.is_disabled, last_sign_in_at: @volunteer.last_sign_in_at, last_sign_in_ip: @volunteer.last_sign_in_ip, name: @volunteer.name, on_email_list: @volunteer.on_email_list, phone: @volunteer.phone, photo_content_type: @volunteer.photo_content_type, photo_file_name: @volunteer.photo_file_name, photo_file_size: @volunteer.photo_file_size, photo_updated_at: @volunteer.photo_updated_at, pickup_prefs: @volunteer.pickup_prefs, pre_reminders_too: @volunteer.pre_reminders_too, preferred_contact: @volunteer.preferred_contact, remember_created_at: @volunteer.remember_created_at, requested_region_id: @volunteer.requested_region_id, reset_password_sent_at: @volunteer.reset_password_sent_at, reset_password_token: @volunteer.reset_password_token, sign_in_count: @volunteer.sign_in_count, sms_too: @volunteer.sms_too, transport_type_id: @volunteer.transport_type_id, waiver_signed: @volunteer.waiver_signed, waiver_signed_at: @volunteer.waiver_signed_at } }, as: :json
    end

    assert_response 201
  end

  test "should show volunteer" do
    get volunteer_url(@volunteer), as: :json
    assert_response :success
  end

  test "should update volunteer" do
    patch volunteer_url(@volunteer), params: { volunteer: { active: @volunteer.active, admin: @volunteer.admin, admin_notes: @volunteer.admin_notes, assigned: @volunteer.assigned, authentication_token: @volunteer.authentication_token, cell_carrier_id: @volunteer.cell_carrier_id, current_sign_in_at: @volunteer.current_sign_in_at, current_sign_in_ip: @volunteer.current_sign_in_ip, email: @volunteer.email, encrypted_password: @volunteer.encrypted_password, get_sncs_email: @volunteer.get_sncs_email, has_car: @volunteer.has_car, is_disabled: @volunteer.is_disabled, last_sign_in_at: @volunteer.last_sign_in_at, last_sign_in_ip: @volunteer.last_sign_in_ip, name: @volunteer.name, on_email_list: @volunteer.on_email_list, phone: @volunteer.phone, photo_content_type: @volunteer.photo_content_type, photo_file_name: @volunteer.photo_file_name, photo_file_size: @volunteer.photo_file_size, photo_updated_at: @volunteer.photo_updated_at, pickup_prefs: @volunteer.pickup_prefs, pre_reminders_too: @volunteer.pre_reminders_too, preferred_contact: @volunteer.preferred_contact, remember_created_at: @volunteer.remember_created_at, requested_region_id: @volunteer.requested_region_id, reset_password_sent_at: @volunteer.reset_password_sent_at, reset_password_token: @volunteer.reset_password_token, sign_in_count: @volunteer.sign_in_count, sms_too: @volunteer.sms_too, transport_type_id: @volunteer.transport_type_id, waiver_signed: @volunteer.waiver_signed, waiver_signed_at: @volunteer.waiver_signed_at } }, as: :json
    assert_response 200
  end

  test "should destroy volunteer" do
    assert_difference('Volunteer.count', -1) do
      delete volunteer_url(@volunteer), as: :json
    end

    assert_response 204
  end
end
