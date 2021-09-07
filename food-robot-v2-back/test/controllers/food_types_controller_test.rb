require "test_helper"

class FoodTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food_type = food_types(:one)
  end

  test "should get index" do
    get food_types_url, as: :json
    assert_response :success
  end

  test "should create food_type" do
    assert_difference('FoodType.count') do
      post food_types_url, params: { food_type: { active: @food_type.active, name: @food_type.name, region_id: @food_type.region_id } }, as: :json
    end

    assert_response 201
  end

  test "should show food_type" do
    get food_type_url(@food_type), as: :json
    assert_response :success
  end

  test "should update food_type" do
    patch food_type_url(@food_type), params: { food_type: { active: @food_type.active, name: @food_type.name, region_id: @food_type.region_id } }, as: :json
    assert_response 200
  end

  test "should destroy food_type" do
    assert_difference('FoodType.count', -1) do
      delete food_type_url(@food_type), as: :json
    end

    assert_response 204
  end
end
