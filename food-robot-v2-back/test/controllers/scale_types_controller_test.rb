require "test_helper"

class ScaleTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scale_type = scale_types(:one)
  end

  test "should get index" do
    get scale_types_url, as: :json
    assert_response :success
  end

  test "should create scale_type" do
    assert_difference('ScaleType.count') do
      post scale_types_url, params: { scale_type: { active: @scale_type.active, name: @scale_type.name, region_id: @scale_type.region_id, weight_unit: @scale_type.weight_unit } }, as: :json
    end

    assert_response 201
  end

  test "should show scale_type" do
    get scale_type_url(@scale_type), as: :json
    assert_response :success
  end

  test "should update scale_type" do
    patch scale_type_url(@scale_type), params: { scale_type: { active: @scale_type.active, name: @scale_type.name, region_id: @scale_type.region_id, weight_unit: @scale_type.weight_unit } }, as: :json
    assert_response 200
  end

  test "should destroy scale_type" do
    assert_difference('ScaleType.count', -1) do
      delete scale_type_url(@scale_type), as: :json
    end

    assert_response 204
  end
end
