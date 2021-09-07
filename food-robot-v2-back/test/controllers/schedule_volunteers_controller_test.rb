require "test_helper"

class ScheduleVolunteersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule_volunteer = schedule_volunteers(:one)
  end

  test "should get index" do
    get schedule_volunteers_url, as: :json
    assert_response :success
  end

  test "should create schedule_volunteer" do
    assert_difference('ScheduleVolunteer.count') do
      post schedule_volunteers_url, params: { schedule_volunteer: { active: @schedule_volunteer.active, schedule_chain_id: @schedule_volunteer.schedule_chain_id, volunteer_id: @schedule_volunteer.volunteer_id } }, as: :json
    end

    assert_response 201
  end

  test "should show schedule_volunteer" do
    get schedule_volunteer_url(@schedule_volunteer), as: :json
    assert_response :success
  end

  test "should update schedule_volunteer" do
    patch schedule_volunteer_url(@schedule_volunteer), params: { schedule_volunteer: { active: @schedule_volunteer.active, schedule_chain_id: @schedule_volunteer.schedule_chain_id, volunteer_id: @schedule_volunteer.volunteer_id } }, as: :json
    assert_response 200
  end

  test "should destroy schedule_volunteer" do
    assert_difference('ScheduleVolunteer.count', -1) do
      delete schedule_volunteer_url(@schedule_volunteer), as: :json
    end

    assert_response 204
  end
end
