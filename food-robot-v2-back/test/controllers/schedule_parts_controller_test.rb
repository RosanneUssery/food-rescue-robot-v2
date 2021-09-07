require "test_helper"

class SchedulePartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @schedule_part = schedule_parts(:one)
  end

  test "should get index" do
    get schedule_parts_url, as: :json
    assert_response :success
  end

  test "should create schedule_part" do
    assert_difference('SchedulePart.count') do
      post schedule_parts_url, params: { schedule_part: { food_type_id: @schedule_part.food_type_id, required: @schedule_part.required, schedule_id: @schedule_part.schedule_id } }, as: :json
    end

    assert_response 201
  end

  test "should show schedule_part" do
    get schedule_part_url(@schedule_part), as: :json
    assert_response :success
  end

  test "should update schedule_part" do
    patch schedule_part_url(@schedule_part), params: { schedule_part: { food_type_id: @schedule_part.food_type_id, required: @schedule_part.required, schedule_id: @schedule_part.schedule_id } }, as: :json
    assert_response 200
  end

  test "should destroy schedule_part" do
    assert_difference('SchedulePart.count', -1) do
      delete schedule_part_url(@schedule_part), as: :json
    end

    assert_response 204
  end
end
