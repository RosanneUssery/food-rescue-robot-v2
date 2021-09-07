require "test_helper"

class LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get locations_url, as: :json
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post locations_url, params: { location: { active: @location.active, address: @location.address, admin_notes: @location.admin_notes, contact: @location.contact, detailed_hours_json: @location.detailed_hours_json, donor_type: @location.donor_type, email: @location.email, entry_info: @location.entry_info, equipment_storage_info: @location.equipment_storage_info, exit_info: @location.exit_info, food_storage_info: @location.food_storage_info, hours: @location.hours, lat: @location.lat, lng: @location.lng, location_type: @location.location_type, name: @location.name, onsite_contact_info: @location.onsite_contact_info, phone: @location.phone, public_notes: @location.public_notes, receipt_key: @location.receipt_key, recip_category: @location.recip_category, region_id: @location.region_id, twitter_handle: @location.twitter_handle, website: @location.website } }, as: :json
    end

    assert_response 201
  end

  test "should show location" do
    get location_url(@location), as: :json
    assert_response :success
  end

  test "should update location" do
    patch location_url(@location), params: { location: { active: @location.active, address: @location.address, admin_notes: @location.admin_notes, contact: @location.contact, detailed_hours_json: @location.detailed_hours_json, donor_type: @location.donor_type, email: @location.email, entry_info: @location.entry_info, equipment_storage_info: @location.equipment_storage_info, exit_info: @location.exit_info, food_storage_info: @location.food_storage_info, hours: @location.hours, lat: @location.lat, lng: @location.lng, location_type: @location.location_type, name: @location.name, onsite_contact_info: @location.onsite_contact_info, phone: @location.phone, public_notes: @location.public_notes, receipt_key: @location.receipt_key, recip_category: @location.recip_category, region_id: @location.region_id, twitter_handle: @location.twitter_handle, website: @location.website } }, as: :json
    assert_response 200
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete location_url(@location), as: :json
    end

    assert_response 204
  end
end
