require "test_helper"

class LogPartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log_part = log_parts(:one)
  end

  test "should get index" do
    get log_parts_url, as: :json
    assert_response :success
  end

  test "should create log_part" do
    assert_difference('LogPart.count') do
      post log_parts_url, params: { log_part: { count: @log_part.count, description: @log_part.description, food_type_id: @log_part.food_type_id, log_id: @log_part.log_id, required: @log_part.required, weight: @log_part.weight } }, as: :json
    end

    assert_response 201
  end

  test "should show log_part" do
    get log_part_url(@log_part), as: :json
    assert_response :success
  end

  test "should update log_part" do
    patch log_part_url(@log_part), params: { log_part: { count: @log_part.count, description: @log_part.description, food_type_id: @log_part.food_type_id, log_id: @log_part.log_id, required: @log_part.required, weight: @log_part.weight } }, as: :json
    assert_response 200
  end

  test "should destroy log_part" do
    assert_difference('LogPart.count', -1) do
      delete log_part_url(@log_part), as: :json
    end

    assert_response 204
  end
end
