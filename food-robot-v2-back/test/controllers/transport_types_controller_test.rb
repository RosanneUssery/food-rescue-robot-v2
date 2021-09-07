require "test_helper"

class TransportTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transport_type = transport_types(:one)
  end

  test "should get index" do
    get transport_types_url, as: :json
    assert_response :success
  end

  test "should create transport_type" do
    assert_difference('TransportType.count') do
      post transport_types_url, params: { transport_type: { active: @transport_type.active, name: @transport_type.name } }, as: :json
    end

    assert_response 201
  end

  test "should show transport_type" do
    get transport_type_url(@transport_type), as: :json
    assert_response :success
  end

  test "should update transport_type" do
    patch transport_type_url(@transport_type), params: { transport_type: { active: @transport_type.active, name: @transport_type.name } }, as: :json
    assert_response 200
  end

  test "should destroy transport_type" do
    assert_difference('TransportType.count', -1) do
      delete transport_type_url(@transport_type), as: :json
    end

    assert_response 204
  end
end
