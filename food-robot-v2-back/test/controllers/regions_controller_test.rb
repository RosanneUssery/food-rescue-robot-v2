require "test_helper"

class RegionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @region = regions(:one)
  end

  test "should get index" do
    get regions_url, as: :json
    assert_response :success
  end

  test "should create region" do
    assert_difference('Region.count') do
      post regions_url, params: { region: { address: @region.address, handbook_url: @region.handbook_url, lat: @region.lat, lng: @region.lng, logo_content_type: @region.logo_content_type, logo_file_name: @region.logo_file_name, logo_file_size: @region.logo_file_size, logo_updated_at: @region.logo_updated_at, name: @region.name, notes: @region.notes, phone: @region.phone, post_pickup_emails: @region.post_pickup_emails, prior_lbs_rescued: @region.prior_lbs_rescued, prior_num_pickups: @region.prior_num_pickups, splash_html: @region.splash_html, tagline: @region.tagline, tax_id: @region.tax_id, time_zone: @region.time_zone, title: @region.title, twitter_key: @region.twitter_key, twitter_last_poundage: @region.twitter_last_poundage, twitter_last_timestamp: @region.twitter_last_timestamp, twitter_secret: @region.twitter_secret, twitter_token: @region.twitter_token, twitter_token_secret: @region.twitter_token_secret, unschedule_self: @region.unschedule_self, volunteer_coordinator_email: @region.volunteer_coordinator_email, website: @region.website, weight_unit: @region.weight_unit, welcome_email_text: @region.welcome_email_text } }, as: :json
    end

    assert_response 201
  end

  test "should show region" do
    get region_url(@region), as: :json
    assert_response :success
  end

  test "should update region" do
    patch region_url(@region), params: { region: { address: @region.address, handbook_url: @region.handbook_url, lat: @region.lat, lng: @region.lng, logo_content_type: @region.logo_content_type, logo_file_name: @region.logo_file_name, logo_file_size: @region.logo_file_size, logo_updated_at: @region.logo_updated_at, name: @region.name, notes: @region.notes, phone: @region.phone, post_pickup_emails: @region.post_pickup_emails, prior_lbs_rescued: @region.prior_lbs_rescued, prior_num_pickups: @region.prior_num_pickups, splash_html: @region.splash_html, tagline: @region.tagline, tax_id: @region.tax_id, time_zone: @region.time_zone, title: @region.title, twitter_key: @region.twitter_key, twitter_last_poundage: @region.twitter_last_poundage, twitter_last_timestamp: @region.twitter_last_timestamp, twitter_secret: @region.twitter_secret, twitter_token: @region.twitter_token, twitter_token_secret: @region.twitter_token_secret, unschedule_self: @region.unschedule_self, volunteer_coordinator_email: @region.volunteer_coordinator_email, website: @region.website, weight_unit: @region.weight_unit, welcome_email_text: @region.welcome_email_text } }, as: :json
    assert_response 200
  end

  test "should destroy region" do
    assert_difference('Region.count', -1) do
      delete region_url(@region), as: :json
    end

    assert_response 204
  end
end
