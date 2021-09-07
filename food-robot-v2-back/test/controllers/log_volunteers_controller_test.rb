require "test_helper"

class LogVolunteersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log_volunteer = log_volunteers(:one)
  end

  test "should get index" do
    get log_volunteers_url, as: :json
    assert_response :success
  end

  test "should create log_volunteer" do
    assert_difference('LogVolunteer.count') do
      post log_volunteers_url, params: { log_volunteer: { active: @log_volunteer.active, covering: @log_volunteer.covering, log_id: @log_volunteer.log_id, volunteer_id: @log_volunteer.volunteer_id } }, as: :json
    end

    assert_response 201
  end

  test "should show log_volunteer" do
    get log_volunteer_url(@log_volunteer), as: :json
    assert_response :success
  end

  test "should update log_volunteer" do
    patch log_volunteer_url(@log_volunteer), params: { log_volunteer: { active: @log_volunteer.active, covering: @log_volunteer.covering, log_id: @log_volunteer.log_id, volunteer_id: @log_volunteer.volunteer_id } }, as: :json
    assert_response 200
  end

  test "should destroy log_volunteer" do
    assert_difference('LogVolunteer.count', -1) do
      delete log_volunteer_url(@log_volunteer), as: :json
    end

    assert_response 204
  end
end
